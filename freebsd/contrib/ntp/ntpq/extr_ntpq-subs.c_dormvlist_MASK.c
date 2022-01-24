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
struct varlist {scalar_t__ name; void* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAXLIST ; 
 struct varlist* FUNC1 (struct varlist*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 struct varlist* g_varlist ; 
 scalar_t__ FUNC4 (size_t*,char const**,char**,char**) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6(
	struct varlist *vlist,
	const char *vars
	)
{
	struct varlist *vl;
	size_t len;
	char *name;
	char *value;

	len = FUNC5(vars);
	while (FUNC4(&len, &vars, &name, &value)) {
		FUNC0(name && value);
		vl = FUNC1(vlist, name);
		if (vl == 0 || vl->name == 0) {
			(void) FUNC2(stderr, "Variable `%s' not found\n",
				       name);
		} else {
			FUNC3((void *)(intptr_t)vl->name);
			if (vl->value != 0)
			    FUNC3(vl->value);
			for ( ; (vl+1) < (g_varlist + MAXLIST)
				      && (vl+1)->name != 0; vl++) {
				vl->name = (vl+1)->name;
				vl->value = (vl+1)->value;
			}
			vl->name = vl->value = 0;
		}
	}
}