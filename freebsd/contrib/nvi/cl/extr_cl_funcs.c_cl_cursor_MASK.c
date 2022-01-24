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

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/ * stdscr ; 

int
FUNC2(SCR *sp, size_t *yp, size_t *xp)
{
	WINDOW *win;
	win = FUNC0(sp) ? FUNC0(sp) : stdscr;
	/*
	 * The curses screen support splits a single underlying curses screen
	 * into multiple screens to support split screen semantics.  For this
	 * reason the returned value must be adjusted to be relative to the
	 * current screen, and not absolute.  Screens that implement the split
	 * using physically distinct screens won't need this hack.
	 */
	FUNC1(win, *yp, *xp);
	/*
	*yp -= sp->roff;
	*xp -= sp->coff;
	*/
	return (0);
}