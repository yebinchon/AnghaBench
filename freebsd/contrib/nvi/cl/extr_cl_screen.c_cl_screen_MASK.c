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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_17__ {int /*<<< orphan*/ * cup; int /*<<< orphan*/  rows; struct TYPE_17__* gp; } ;
typedef  TYPE_1__ SCR ;
typedef  TYPE_1__ GS ;
typedef  TYPE_1__ CL_PRIVATE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int CL_IN_EX ; 
 int CL_SCR_EX_INIT ; 
 int CL_SCR_VI_INIT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int G_SRESTART ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  O_COLUMNS ; 
 int /*<<< orphan*/  O_LINES ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int SC_EX ; 
 int SC_SCR_EX ; 
 int SC_SCR_VI ; 
 int SC_VI ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  cl_putchar ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  q ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * stdscr ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

int
FUNC18(SCR *sp, u_int32_t flags)
{
	CL_PRIVATE *clp;
	WINDOW *win;
	GS *gp;

	gp = sp->gp;
	clp = FUNC0(sp);
	win = FUNC1(sp) ? FUNC1(sp) : stdscr;

	/* See if the current information is incorrect. */
	if (FUNC3(gp, G_SRESTART)) {
		if ((!FUNC3(sp, SC_SCR_EX | SC_SCR_VI) ||
		     FUNC12(FUNC6(sp, O_LINES), FUNC6(sp, O_COLUMNS))) &&
		    FUNC10(gp))
			return (1);
		FUNC2(gp, G_SRESTART);
	}
	
	/* See if we're already in the right mode. */
	if ((FUNC5(SC_EX) && FUNC3(sp, SC_SCR_EX)) ||
	    (FUNC5(SC_VI) && FUNC3(sp, SC_SCR_VI)))
		return (0);

	/*
	 * Fake leaving ex mode.
	 *
	 * We don't actually exit ex or vi mode unless forced (e.g. by a window
	 * size change).  This is because many curses implementations can't be
	 * called twice in a single program.  Plus, it's faster.  If the editor
	 * "leaves" vi to enter ex, when it exits ex we'll just fall back into
	 * vi.
	 */
	if (FUNC3(sp, SC_SCR_EX))
		FUNC2(sp, SC_SCR_EX);

	/*
	 * Fake leaving vi mode.
	 *
	 * Clear out the rest of the screen if we're in the middle of a split
	 * screen.  Move to the last line in the current screen -- this makes
	 * terminal scrolling happen naturally.  Note: *don't* move past the
	 * end of the screen, as there are ex commands (e.g., :read ! cat file)
	 * that don't want to.  Don't clear the info line, its contents may be
	 * valid, e.g. :file|append.
	 */
	if (FUNC3(sp, SC_SCR_VI)) {
		FUNC2(sp, SC_SCR_VI);

		if (FUNC8(sp, q) != NULL) {
			(void)FUNC16(win, FUNC7(sp, sp->rows), 0);
			FUNC15(win);
		}
		(void)FUNC16(win, FUNC7(sp, sp->rows) - 1, 0);
		FUNC17(win);
	}

	/* Enter the requested mode. */
	if (FUNC5(SC_EX)) {
		if (FUNC9(sp))
			return (1);
		FUNC4(clp, CL_IN_EX | CL_SCR_EX_INIT);

		/*
		 * If doing an ex screen for ex mode, move to the last line
		 * on the screen.
		 */
		if (FUNC3(sp, SC_EX) && clp->cup != NULL)
			FUNC14(FUNC13(clp->cup,
			    0, FUNC6(sp, O_LINES) - 1), 1, cl_putchar);
	} else {
		if (FUNC11(sp))
			return (1);
		FUNC2(clp, CL_IN_EX);
		FUNC4(clp, CL_SCR_VI_INIT);
	}
	return (0);
}