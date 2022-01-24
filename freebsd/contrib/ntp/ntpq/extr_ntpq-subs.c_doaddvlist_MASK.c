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
struct varlist {int /*<<< orphan*/ * value; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (char*) ; 
 struct varlist* FUNC2 (struct varlist*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (size_t*,char const**,char**,char**) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC6 (char const*) ; 

__attribute__((used)) static void
FUNC7(
	struct varlist *vlist,
	const char *vars
	)
{
	struct varlist *vl;
	size_t len;
	char *name;
	char *value;

	len = FUNC6(vars);
	while (FUNC5(&len, &vars, &name, &value)) {
		FUNC0(name && value);
		vl = FUNC2(vlist, name);
		if (NULL == vl) {
			FUNC3(stderr, "Variable list full\n");
			return;
		}

		if (NULL == vl->name) {
			vl->name = FUNC1(name);
		} else if (vl->value != NULL) {
			FUNC4(vl->value);
			vl->value = NULL;
		}

		if (value != NULL)
			vl->value = FUNC1(value);
	}
}