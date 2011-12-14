<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <script src="http://code.jquery.com/jquery-latest.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<title>Online Shoppe : Product Search Result</title>
<script type="text/javascript">
	
function getXMLHttp() {
    var xmlHttp = new XMLHttpRequest();

    return xmlHttp;
}


function getProductResult() {

 jQuery.ajax({type: "POST", url: "productSearch", dataType: "xml",
  success: function(data){
   jQuery(data).find("product_search_result").each(function(){
   jQuery("#productname").append(jQuery(this).find("label:contains('Category')").parent().find('values value label'));      
   });
   
    }
 });
}


	   
</script>
</head>
<body>
<form action="shop/v1/product_search" method="post">
	<div id="productname">Product</div>
	<div id="productprice">Product Price</div>
	<div id="productshortdescription">Product Short Description</div>
	 <input type="button" onClick="javascript:getProductResult();" value="Click to get product search  results"/>

</form>
</body>
</html>