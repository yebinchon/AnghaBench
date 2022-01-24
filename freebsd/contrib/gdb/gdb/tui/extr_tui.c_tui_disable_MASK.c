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
 scalar_t__ rl_already_prompted ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ rl_startup_hook ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ tui_active ; 
 int /*<<< orphan*/  tui_readline_standard_keymap ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6 (void)
{
  if (!tui_active)
    return;

  /* Restore initial readline keymap.  */
  FUNC1 (tui_readline_standard_keymap);

  /* Remove TUI hooks.  */
  FUNC3 ();
  rl_startup_hook = 0;
  rl_already_prompted = 0;

  /* Leave curses and restore previous gdb terminal setting.  */
  FUNC0 ();

  /* gdb terminal has changed, update gdb internal copy of it
     so that terminal management with the inferior works.  */
  FUNC4 (0);

  /* Update gdb's knowledge of its terminal.  */
  FUNC2 ();

  tui_active = 0;
  FUNC5 ();
}