#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct termios {int dummy; } ;
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_15__ {TYPE_1__* frp; scalar_t__ killersig; struct termios orig; int /*<<< orphan*/ * gp; } ;
struct TYPE_14__ {int /*<<< orphan*/ * name; } ;
typedef  TYPE_2__ SCR ;
typedef  int /*<<< orphan*/  GS ;
typedef  TYPE_2__ CL_PRIVATE ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 int CL_SCR_EX_INIT ; 
 int CL_SCR_VI_INIT ; 
 int /*<<< orphan*/  CL_SIGWINCH ; 
 int /*<<< orphan*/  CL_STDIN_TTY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 size_t LINES ; 
 int /*<<< orphan*/  SC_EX ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int TCSADRAIN ; 
 int TCSASOFT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stdscr ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,struct termios*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int
FUNC16(SCR *sp, int *allowedp)
{
	struct termios t;
	CL_PRIVATE *clp;
	WINDOW *win;
	GS *gp;
	size_t y, x;
	int changed;

	gp = sp->gp;
	clp = FUNC0(sp);
	win = FUNC1(sp) ? FUNC1(sp) : stdscr;
	*allowedp = 1;

	/*
	 * The ex implementation of this function isn't needed by screens not
	 * supporting ex commands that require full terminal canonical mode
	 * (e.g. :suspend).
	 *
	 * The vi implementation of this function isn't needed by screens not
	 * supporting vi process suspension, i.e. any screen that isn't backed
	 * by a UNIX shell.
	 *
	 * Setting allowedp to 0 will cause the editor to reject the command.
	 */
	if (FUNC3(sp, SC_EX)) { 
		/* Save the terminal settings, and restore the original ones. */
		if (FUNC3(clp, CL_STDIN_TTY)) {
			(void)FUNC12(STDIN_FILENO, &t);
			(void)FUNC13(STDIN_FILENO,
			    TCSASOFT | TCSADRAIN, &clp->orig);
		}

		/* Stop the process group. */
		(void)FUNC11(0, SIGTSTP);

		/* Time passes ... */

		/* Restore terminal settings. */
		if (FUNC3(clp, CL_STDIN_TTY))
			(void)FUNC13(STDIN_FILENO, TCSASOFT | TCSADRAIN, &t);
		return (0);
	}

	/*
	 * Move to the lower left-hand corner of the screen.
	 *
	 * XXX
	 * Not sure this is necessary in System V implementations, but it
	 * shouldn't hurt.
	 */
	FUNC9(win, y, x);
	(void)FUNC14(win, LINES - 1, 0);
	(void)FUNC15(win);

	/*
	 * Temporarily end the screen.  System V introduced a semantic where
	 * endwin() could be restarted.  We use it because restarting curses
	 * from scratch often fails in System V.  4BSD curses didn't support
	 * restarting after endwin(), so we have to do what clean up we can
	 * without calling it.
	 */
	/* Save the terminal settings. */
	(void)FUNC12(STDIN_FILENO, &t);

	/* Restore the cursor keys to normal mode. */
	(void)FUNC10(stdscr, FALSE);

	/* Restore the window name. */
	(void)FUNC6(sp, NULL, 0);

	(void)FUNC8();

	/*
	 * XXX
	 * Restore the original terminal settings.  This is bad -- the
	 * reset can cause character loss from the tty queue.  However,
	 * we can't call endwin() in BSD curses implementations, and too
	 * many System V curses implementations don't get it right.
	 */
	(void)FUNC13(STDIN_FILENO, TCSADRAIN | TCSASOFT, &clp->orig);

	/* Stop the process group. */
	(void)FUNC11(0, SIGTSTP);

	/* Time passes ... */

	/*
	 * If we received a killer signal, we're done.  Leave everything
	 * unchanged.  In addition, the terminal has already been reset
	 * correctly, so leave it alone.
	 */
	if (clp->killersig) {
		FUNC2(clp, CL_SCR_EX_INIT | CL_SCR_VI_INIT);
		return (0);
	}

	/* Restore terminal settings. */
	FUNC15(win);			    /* Needed on SunOs/Solaris ? */
	if (FUNC3(clp, CL_STDIN_TTY))
		(void)FUNC13(STDIN_FILENO, TCSASOFT | TCSADRAIN, &t);

	/* Set the window name. */
	(void)FUNC6(sp, sp->frp->name, 1);

	/* Put the cursor keys into application mode. */
	(void)FUNC10(stdscr, TRUE);

	/* Refresh and repaint the screen. */
	(void)FUNC14(win, y, x);
	(void)FUNC5(sp, 1);

	/* If the screen changed size, set the SIGWINCH bit. */
	if (FUNC7(sp, 1, NULL, NULL, &changed))
		return (1);
	if (changed)
		FUNC4(FUNC0(sp), CL_SIGWINCH);

	return (0);
}