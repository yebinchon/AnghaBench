#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ type; struct TYPE_9__* next; } ;
typedef  TYPE_1__ ucl_object_t ;
struct ucl_schema_error {int dummy; } ;

/* Variables and functions */
 scalar_t__ UCL_ARRAY ; 
 scalar_t__ UCL_OBJECT ; 
 int /*<<< orphan*/  UCL_SCHEMA_INVALID_SCHEMA ; 
 int FUNC0 (char const*,char**,int) ; 
 TYPE_1__* FUNC1 (TYPE_1__ const*) ; 
 TYPE_1__* FUNC2 (TYPE_1__ const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ucl_schema_error*,int /*<<< orphan*/ ,TYPE_1__ const*,char*,char const*,...) ; 

__attribute__((used)) static const ucl_object_t *
FUNC4 (const ucl_object_t *cur,
		const char *refc, int len,
		struct ucl_schema_error *err)
{
	const ucl_object_t *res = NULL;
	char *err_str;
	int num, i;

	if (cur->type == UCL_OBJECT) {
		/* Find a key inside an object */
		res = FUNC2 (cur, refc, len);
		if (res == NULL) {
			FUNC3 (err, UCL_SCHEMA_INVALID_SCHEMA, cur,
					"reference %s is invalid, missing path component", refc);
			return NULL;
		}
	}
	else if (cur->type == UCL_ARRAY) {
		/* We must figure out a number inside array */
		num = FUNC0 (refc, &err_str, 10);
		if (err_str != NULL && *err_str != '/' && *err_str != '\0') {
			FUNC3 (err, UCL_SCHEMA_INVALID_SCHEMA, cur,
					"reference %s is invalid, invalid item number", refc);
			return NULL;
		}
		res = FUNC1 (cur);
		i = 0;
		while (res != NULL) {
			if (i == num) {
				break;
			}
			res = res->next;
		}
		if (res == NULL) {
			FUNC3 (err, UCL_SCHEMA_INVALID_SCHEMA, cur,
					"reference %s is invalid, item number %d does not exist",
					refc, num);
			return NULL;
		}
	}
	else {
		FUNC3 (err, UCL_SCHEMA_INVALID_SCHEMA, res,
				"reference %s is invalid, contains primitive object in the path",
				refc);
		return NULL;
	}

	return res;
}