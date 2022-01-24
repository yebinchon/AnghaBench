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
struct db_variable {int /*<<< orphan*/  name; } ;
typedef  scalar_t__ db_expr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct db_variable* db_evars ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct db_variable**) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct db_variable*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct db_variable* db_vars ; 
 int /*<<< orphan*/  FUNC7 (struct db_variable*,scalar_t__) ; 
 int tDOLLAR ; 
 int tEOL ; 
 int tEQ ; 

void
FUNC8(db_expr_t dummy1, bool dummy2, db_expr_t dummy3, char *dummy4)
{
	struct db_variable *vp;
	db_expr_t value;
	int t;

	t = FUNC4();
	if (t == tEOL) {
		for (vp = db_vars; vp < db_evars; vp++) {
			if (!FUNC5(vp, &value)) {
				FUNC3("$%s\n", vp->name);
				continue;
			}
			FUNC3("$%-8s = %ld\n",
			    vp->name, (unsigned long)value);
		}
		return;
	}
	if (t != tDOLLAR) {
		FUNC0("Unknown variable\n");
		return;
	}
	if (!FUNC2(&vp)) {
		FUNC0("Unknown variable\n");
		return;
	}

	t = FUNC4();
	if (t != tEQ)
		FUNC6(t);

	if (!FUNC1(&value)) {
		FUNC0("No value\n");
		return;
	}
	if (FUNC4() != tEOL)
		FUNC0("?\n");

	FUNC7(vp, value);
}