#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ucl_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  UCL_ARRAY ; 
 int /*<<< orphan*/  UCL_BOOLEAN ; 
 int /*<<< orphan*/  UCL_FLOAT ; 
 int /*<<< orphan*/  UCL_INT ; 
 int /*<<< orphan*/  UCL_NULL ; 
 int /*<<< orphan*/  UCL_OBJECT ; 
 int /*<<< orphan*/  UCL_STRING ; 
 int /*<<< orphan*/  UCL_USERDATA ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

bool
FUNC1 (const char *input, ucl_type_t *res)
{
	if (FUNC0 (input, "object") == 0) {
		*res = UCL_OBJECT;
	}
	else if (FUNC0 (input, "array") == 0) {
		*res = UCL_ARRAY;
	}
	else if (FUNC0 (input, "integer") == 0) {
		*res = UCL_INT;
	}
	else if (FUNC0 (input, "number") == 0) {
		*res = UCL_FLOAT;
	}
	else if (FUNC0 (input, "string") == 0) {
		*res = UCL_STRING;
	}
	else if (FUNC0 (input, "boolean") == 0) {
		*res = UCL_BOOLEAN;
	}
	else if (FUNC0 (input, "null") == 0) {
		*res = UCL_NULL;
	}
	else if (FUNC0 (input, "userdata") == 0) {
		*res = UCL_USERDATA;
	}
	else {
		return false;
	}

	return true;
}