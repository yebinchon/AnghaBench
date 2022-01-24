#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ti_te; } ;
typedef  int /*<<< orphan*/  GS ;
typedef  TYPE_1__ CL_PRIVATE ;

/* Variables and functions */
 int /*<<< orphan*/  CL_IN_EX ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ LINES ; 
 int /*<<< orphan*/  TE_SENT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdscr ; 

__attribute__((used)) static int
FUNC10(GS *gp)
{
	CL_PRIVATE *clp;

	clp = FUNC1(gp);

	/* Restore the cursor keys to normal mode. */
	(void)FUNC6(stdscr, FALSE);

	/*
	 * If we were running vi when we quit, scroll the screen up a single
	 * line so we don't lose any information.
	 *
	 * Move to the bottom of the window (some endwin implementations don't
	 * do this for you).
	 */
	if (!FUNC0(clp, CL_IN_EX)) {
		(void)FUNC7(0, 0);
		(void)FUNC3();
		(void)FUNC7(LINES - 1, 0);
		(void)FUNC8();
	}

	FUNC2(clp);

	/* End curses window. */
	(void)FUNC5();

	/* Free the SCREEN created by newterm(3X). */
	FUNC4(FUNC9(NULL));

	/*
	 * XXX
	 * The screen TE sequence just got sent.  See the comment in
	 * cl_funcs.c:cl_attr().
	 */
	clp->ti_te = TE_SENT;

	return (0);
}