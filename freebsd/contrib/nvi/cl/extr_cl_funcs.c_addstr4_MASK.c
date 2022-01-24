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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_SCR_EXWROTE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/ * stdscr ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,void*,size_t) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int 
FUNC11(SCR *sp, void *str, size_t len, int wide)
{
	CL_PRIVATE *clp;
	WINDOW *win;
	size_t y, x;
	int iv;

	clp = FUNC0(sp);
	win = FUNC1(sp) ? FUNC1(sp) : stdscr;

	/*
	 * If ex isn't in control, it's the last line of the screen and
	 * it's a split screen, use inverse video.
	 */
	iv = 0;
	FUNC6(win, y, x);
	if (!FUNC2(sp, SC_SCR_EXWROTE) &&
	    y == FUNC5(sp, FUNC4(sp)) && FUNC3(sp)) {
		iv = 1;
		(void)FUNC10(win);
	}

#ifdef USE_WIDECHAR
	if (wide) {
	    if (waddnwstr(win, str, len) == ERR)
		return (1);
	} else 
#endif
	    if (FUNC7(win, str, len) == ERR)
		    return (1);

	if (iv)
		(void)FUNC9(win);
	return (0);
}