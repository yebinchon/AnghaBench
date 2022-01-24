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
typedef  int /*<<< orphan*/  WINDOW ;
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  CL_PRIVATE ;

/* Variables and functions */
 int /*<<< orphan*/  A_NORMAL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_SCR_EXWROTE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stdscr ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t,size_t) ; 

int
FUNC10(SCR *sp)
{
	CL_PRIVATE *clp;
	WINDOW *win;
	size_t y, x;

	clp = FUNC0(sp);
	win = FUNC1(sp) ? FUNC1(sp) : stdscr;

	/*
	 * This clause is required because the curses screen uses reverse
	 * video to delimit split screens.  If the screen does not do this,
	 * this code won't be necessary.
	 *
	 * If the bottom line was in reverse video, rewrite it in normal
	 * video before it's scrolled.
	 */
	if (!FUNC2(sp, SC_SCR_EXWROTE) && FUNC3(sp)) {
		FUNC6(win, y, x);
		FUNC7(win, FUNC5(sp, FUNC4(sp)), 0, -1, A_NORMAL, 0, NULL);
		(void)FUNC9(win, y, x);
	}

	/*
	 * The bottom line is expected to be blank after this operation,
	 * and other screens must support that semantic.
	 */
	return (FUNC8(win) == ERR);
}