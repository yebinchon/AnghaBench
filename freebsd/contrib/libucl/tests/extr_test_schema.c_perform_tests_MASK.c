#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ type; } ;
typedef  TYPE_1__ ucl_object_t ;
typedef  int /*<<< orphan*/ * ucl_object_iter_t ;
struct ucl_schema_error {int dummy; } ;
typedef  int /*<<< orphan*/  err ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 scalar_t__ UCL_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ucl_schema_error*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,TYPE_1__ const*,struct ucl_schema_error*) ; 
 int /*<<< orphan*/  stdout ; 
 TYPE_1__* FUNC3 (TYPE_1__ const*,int /*<<< orphan*/ **,int) ; 
 TYPE_1__* FUNC4 (TYPE_1__ const*,char*) ; 
 char* FUNC5 (TYPE_1__ const*) ; 

__attribute__((used)) static int
FUNC6 (const ucl_object_t *obj)
{
	struct ucl_schema_error err;
	ucl_object_iter_t iter = NULL;
	const ucl_object_t *schema, *tests, *description, *test;

	if (obj->type != UCL_OBJECT) {
		FUNC0 (stdout, "Bad test case\n");
		return EXIT_FAILURE;
	}

	schema = FUNC4 (obj, "schema");
	tests = FUNC4 (obj, "tests");
	description = FUNC4 (obj, "description");

	if (schema == NULL || tests == NULL || description == NULL) {
		FUNC0 (stdout, "Bad test case\n");
		return EXIT_FAILURE;
	}

	FUNC1 (&err, 0, sizeof (err));

	while ((test = FUNC3 (tests, &iter, true)) != NULL) {
		if (!FUNC2 (schema, test, &err)) {
			FUNC0 (stdout, "Test suite '%s' failed\n",
							FUNC5 (description));
			return EXIT_FAILURE;
		}
	}

	return 0;
}