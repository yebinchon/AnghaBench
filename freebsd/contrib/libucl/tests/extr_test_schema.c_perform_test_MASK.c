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
typedef  int /*<<< orphan*/  ucl_object_t ;
struct ucl_schema_error {char* msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCL_EMIT_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,char*) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 char* FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,struct ucl_schema_error*) ; 

__attribute__((used)) static bool
FUNC6 (const ucl_object_t *schema, const ucl_object_t *obj,
		struct ucl_schema_error *err)
{
	const ucl_object_t *valid, *data, *description;
	bool match;

	data = FUNC2 (obj, "data");
	description = FUNC2 (obj, "description");
	valid = FUNC2 (obj, "valid");

	if (data == NULL || description == NULL || valid == NULL) {
		FUNC0 (stdout, "Bad test case\n");
		return false;
	}

	match = FUNC5 (schema, data, err);
	if (match != FUNC3 (valid)) {
		FUNC0 (stdout, "Test case '%s' failed (expected %s): '%s'\n",
				FUNC4 (description),
				FUNC3 (valid) ? "valid" : "invalid",
						err->msg);
		FUNC0 (stdout, "%s\n", FUNC1 (data, UCL_EMIT_CONFIG));
		FUNC0 (stdout, "%s\n", FUNC1 (schema, UCL_EMIT_CONFIG));
		return false;
	}

	return true;
}