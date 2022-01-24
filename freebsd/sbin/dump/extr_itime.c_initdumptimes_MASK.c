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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  LOCK_SH ; 
 int /*<<< orphan*/  dumpdates ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

void
FUNC8(void)
{
	FILE *df;

	if ((df = FUNC3(dumpdates, "r")) == NULL) {
		if (errno != ENOENT) {
			FUNC4("WARNING: cannot read %s: %s\n", dumpdates,
			    FUNC7(errno));
			return;
		}
		/*
		 * Dumpdates does not exist, make an empty one.
		 */
		FUNC4("WARNING: no file `%s', making an empty one\n", dumpdates);
		if ((df = FUNC3(dumpdates, "w")) == NULL) {
			FUNC4("WARNING: cannot create %s: %s\n", dumpdates,
			    FUNC7(errno));
			return;
		}
		(void) FUNC0(df);
		if ((df = FUNC3(dumpdates, "r")) == NULL) {
			FUNC5("cannot read %s even after creating it: %s\n",
			    dumpdates, FUNC7(errno));
			/* NOTREACHED */
		}
	}
	(void) FUNC2(FUNC1(df), LOCK_SH);
	FUNC6(df);
	(void) FUNC0(df);
}