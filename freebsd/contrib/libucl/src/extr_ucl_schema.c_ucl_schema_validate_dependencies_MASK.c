#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ type; } ;
typedef  TYPE_1__ ucl_object_t ;
typedef  int /*<<< orphan*/ * ucl_object_iter_t ;
struct ucl_schema_error {int dummy; } ;

/* Variables and functions */
 scalar_t__ UCL_ARRAY ; 
 scalar_t__ UCL_OBJECT ; 
 int /*<<< orphan*/  UCL_SCHEMA_MISSING_DEPENDENCY ; 
 TYPE_1__* FUNC0 (TYPE_1__ const*,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 TYPE_1__* FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ucl_schema_error*,int /*<<< orphan*/ ,TYPE_1__ const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__ const*,TYPE_1__ const*,int,struct ucl_schema_error*,TYPE_1__ const*,TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC6 (const ucl_object_t *deps,
		const ucl_object_t *obj, struct ucl_schema_error *err,
		const ucl_object_t *root,
		ucl_object_t *ext_ref)
{
	const ucl_object_t *elt, *cur, *cur_dep;
	ucl_object_iter_t iter = NULL, piter;
	bool ret = true;

	while (ret && (cur = FUNC0 (deps, &iter, true)) != NULL) {
		elt = FUNC2 (obj, FUNC1 (cur));
		if (elt != NULL) {
			/* Need to check dependencies */
			if (cur->type == UCL_ARRAY) {
				piter = NULL;
				while (ret && (cur_dep = FUNC0 (cur, &piter, true)) != NULL) {
					if (FUNC2 (obj, FUNC3 (cur_dep)) == NULL) {
						FUNC4 (err, UCL_SCHEMA_MISSING_DEPENDENCY, elt,
								"dependency %s is missing for key %s",
								FUNC3 (cur_dep), FUNC1 (cur));
						ret = false;
						break;
					}
				}
			}
			else if (cur->type == UCL_OBJECT) {
				ret = FUNC5 (cur, obj, true, err, root, ext_ref);
			}
		}
	}

	return ret;
}