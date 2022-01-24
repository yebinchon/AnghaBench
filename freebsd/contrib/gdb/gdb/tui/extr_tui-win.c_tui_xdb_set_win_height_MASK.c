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

/* Variables and functions */
 size_t CMD_WIN ; 
 scalar_t__ TUI_FAILURE ; 
 int /*<<< orphan*/  XDBWIN_HEIGHT_USAGE ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/ * tui_win_list ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (char *arg, int from_tty)
{
  /* Make sure the curses mode is enabled.  */
  FUNC3 ();
  if (arg != (char *) NULL)
    {
      int input_no = FUNC0 (arg);

      if (input_no > 0)
	{			/* Add 1 for the locator */
	  int new_height = FUNC4 () - (input_no + 1);

	  if (!FUNC1 (tui_win_list[CMD_WIN], new_height) ||
	      FUNC2 (tui_win_list[CMD_WIN],
				    new_height) == TUI_FAILURE)
	    FUNC5 ("Invalid window height specified.\n%s",
		     XDBWIN_HEIGHT_USAGE);
	}
      else
	FUNC5 ("Invalid window height specified.\n%s",
		 XDBWIN_HEIGHT_USAGE);
    }
  else
    FUNC5 ("Invalid window height specified.\n%s", XDBWIN_HEIGHT_USAGE);
}