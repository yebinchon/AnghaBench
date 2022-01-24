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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ rl_end ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ tui_active ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int
FUNC7 (int notused1, int notused2)
{
  if (tui_active)
    {
      FUNC5 ();
      FUNC4 (0);
    }
  else
    {
      FUNC1 ();
      FUNC6 ();
    }

  /* Clear the readline in case switching occurred in middle of something.  */
  if (rl_end)
    FUNC2 (0, rl_end);

  /* Since we left the curses mode, the terminal mode is restored to
     some previous state.  That state may not be suitable for readline
     to work correctly (it may be restored in line mode).  We force an
     exit of the current readline so that readline is re-entered and it
     will be able to setup the terminal for its needs.  By re-entering
     in readline, we also redisplay its prompt in the non-curses mode.  */
  FUNC3 (1, '\n');

  /* Make sure the \n we are returning does not repeat the last command.  */
  FUNC0 ();
  return 0;
}