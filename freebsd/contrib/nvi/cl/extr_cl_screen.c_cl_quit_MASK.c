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
struct TYPE_5__ {int /*<<< orphan*/  orig; } ;
typedef  int /*<<< orphan*/  GS ;
typedef  TYPE_1__ CL_PRIVATE ;

/* Variables and functions */
 int CL_SCR_EX_INIT ; 
 int CL_SCR_VI_INIT ; 
 int CL_STDIN_TTY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int TCSADRAIN ; 
 int TCSASOFT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

int
FUNC7(GS *gp)
{
	CL_PRIVATE *clp;
	int rval;

	rval = 0;
	clp = FUNC2(gp);

	/*
	 * If we weren't really running, ignore it.  This happens if the
	 * screen changes size before we've called curses.
	 */
	if (!FUNC1(clp, CL_SCR_EX_INIT | CL_SCR_VI_INIT))
		return (0);

	/* Clean up the terminal mappings. */
	if (FUNC4(gp))
		rval = 1;

	/* Really leave vi mode. */
	if (FUNC1(clp, CL_STDIN_TTY) &&
	    FUNC1(clp, CL_SCR_VI_INIT) && FUNC5(gp))
		rval = 1;

	/* Really leave ex mode. */
	if (FUNC1(clp, CL_STDIN_TTY) &&
	    FUNC1(clp, CL_SCR_EX_INIT) && FUNC3(gp))
		rval = 1;

	/*
	 * If we were running ex when we quit, or we're using an implementation
	 * of curses where endwin() doesn't get this right, restore the original
	 * terminal modes.
	 *
	 * XXX
	 * We always do this because it's too hard to figure out what curses
	 * implementations get it wrong.  It may discard type-ahead characters
	 * from the tty queue.
	 */
	(void)FUNC6(STDIN_FILENO, TCSADRAIN | TCSASOFT, &clp->orig);

	FUNC0(clp, CL_SCR_EX_INIT | CL_SCR_VI_INIT);
	return (rval);
}