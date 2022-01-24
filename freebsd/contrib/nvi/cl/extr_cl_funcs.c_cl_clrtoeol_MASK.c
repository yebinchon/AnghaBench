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
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_5__ {size_t coff; size_t cols; } ;
typedef  TYPE_1__ SCR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 scalar_t__ ERR ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/ * stdscr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t,size_t) ; 

int
FUNC6(SCR *sp)
{
	WINDOW *win;
#if 0
	size_t spcnt, y, x;
#endif

	win = FUNC0(sp) ? FUNC0(sp) : stdscr;

#if 0
	if (IS_VSPLIT(sp)) {
		/* The cursor must be returned to its original position. */
		getyx(win, y, x);
		for (spcnt = (sp->coff + sp->cols) - x; spcnt > 0; --spcnt)
			(void)waddch(win, ' ');
		(void)wmove(win, y, x);
		return (0);
	} else
#endif
		return (FUNC4(win) == ERR);
}