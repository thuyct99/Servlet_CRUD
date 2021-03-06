<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<div style="margin-left: 10%">
		<h1>Add Student Form</h1>

		<form class="form-group" action="<%=request.getContextPath()%>/home"
			method="POST" style="width: 50%;">
			ID: <input class="form-control" type="text" name="id"><br>
			Name: <input class="form-control" type="text" name="name"> <br>
			Age: <input class="form-control" type="text" name="age"><br>

			<div class="opption">
				<p>Do you have a license car?</p>
				<input type="radio" id="yes" name="check" value="yes">
				<label for="yes">Yes</label>
				<br>
				<input type="radio" id="no"	name="check" value="no">
				<label for="no">No</label>
				<br>
			</div>
			<div class="license_input" style="display: none">
				<p id="error">Your license is numbers</p>

				<label>My license car is: </label> <input class="form-control"
					type="text" id="license_number" name="license_number">
			</div>

			<input class="btn btn-success" type="submit" value="Save"
				style="margin-top: 30px; width: 100%">

		</form>
	</div>

	<script>
		$(document).ready(function() {
			$("#yes").on("click", function() {
				$(".license_input").show();
				$("#error").show();
			});

			$("#no").on("click", function() {
				$(".license_input").hide();
				$("#error").hide();
				$("#license_number").val("");
			});

			$("#license_number").on("click", function() {
				$("#opption").hide();
				var checkNumber = $("#license_number").val();
				if ($.isNumeric(checkNumber)) {
					$("#error").html("Your license is valid");
					$("#error").css("color", "green");
				} else {
					$("#error").html("Your license is invalid");
					$("#error").css("color", "red");
				}
			});
		});
	</script>
</body>
</html>