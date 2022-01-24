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
typedef  int /*<<< orphan*/ * ucl_object_iter_t ;
struct ucl_schema_error {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCL_SCHEMA_CONSTRAINT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ucl_schema_error*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,char*) ; 

__attribute__((used)) static bool
FUNC3 (const ucl_object_t *en, const ucl_object_t *obj,
		struct ucl_schema_error *err)
{
	ucl_object_iter_t iter = NULL;
	const ucl_object_t *elt;
	bool ret = false;

	while ((elt = FUNC1 (en, &iter, true)) != NULL) {
		if (FUNC0 (elt, obj) == 0) {
			ret = true;
			break;
		}
	}

	if (!ret) {
		FUNC2 (err, UCL_SCHEMA_CONSTRAINT, obj,
				"object is not one of enumerated patterns");
	}

	return ret;
}