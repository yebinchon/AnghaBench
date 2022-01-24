#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char key; scalar_t__ cmd; } ;
typedef  scalar_t__ Keymap ;

/* Variables and functions */
 char FUNC0 (char) ; 
 int /*<<< orphan*/  ISKMAP ; 
 scalar_t__ emacs_ctlx_keymap ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 TYPE_1__* tui_commands ; 
 scalar_t__ tui_keymap ; 
 int /*<<< orphan*/  tui_readline_standard_keymap ; 
 int /*<<< orphan*/  tui_rl_change_windows ; 
 int /*<<< orphan*/  tui_rl_command_key ; 
 int /*<<< orphan*/  tui_rl_command_mode ; 
 int /*<<< orphan*/  tui_rl_delete_other_windows ; 
 int /*<<< orphan*/  tui_rl_next_keymap ; 
 int /*<<< orphan*/  tui_rl_other_window ; 
 int /*<<< orphan*/  tui_rl_switch_mode ; 

void
FUNC7 (void)
{
  int i;
  Keymap tui_ctlx_keymap;

  FUNC5 ();

  FUNC1 ("tui-switch-mode", tui_rl_switch_mode, -1);
  FUNC1 ("gdb-command", tui_rl_command_key, -1);
  FUNC1 ("next-keymap", tui_rl_next_keymap, -1);

  tui_keymap = FUNC6 ();
  tui_ctlx_keymap = FUNC6 ();
  tui_readline_standard_keymap = FUNC4 ();

  for (i = 0; tui_commands[i].cmd; i++)
    FUNC2 (tui_commands[i].key, tui_rl_command_key, tui_keymap);

  FUNC3 (ISKMAP, "\\C-x", (char*) tui_ctlx_keymap, tui_keymap);

  /* Bind all other keys to tui_rl_command_mode so that we switch
     temporarily from SingleKey mode and can enter a gdb command.  */
  for (i = ' '; i < 0x7f; i++)
    {
      int j;

      for (j = 0; tui_commands[j].cmd; j++)
        if (tui_commands[j].key == i)
          break;

      if (tui_commands[j].cmd)
        continue;

      FUNC2 (i, tui_rl_command_mode, tui_keymap);
    }

  FUNC2 ('a', tui_rl_switch_mode, emacs_ctlx_keymap);
  FUNC2 ('a', tui_rl_switch_mode, tui_ctlx_keymap);
  FUNC2 ('A', tui_rl_switch_mode, emacs_ctlx_keymap);
  FUNC2 ('A', tui_rl_switch_mode, tui_ctlx_keymap);
  FUNC2 (FUNC0 ('A'), tui_rl_switch_mode, emacs_ctlx_keymap);
  FUNC2 (FUNC0 ('A'), tui_rl_switch_mode, tui_ctlx_keymap);
  FUNC2 ('1', tui_rl_delete_other_windows, emacs_ctlx_keymap);
  FUNC2 ('1', tui_rl_delete_other_windows, tui_ctlx_keymap);
  FUNC2 ('2', tui_rl_change_windows, emacs_ctlx_keymap);
  FUNC2 ('2', tui_rl_change_windows, tui_ctlx_keymap);
  FUNC2 ('o', tui_rl_other_window, emacs_ctlx_keymap);
  FUNC2 ('o', tui_rl_other_window, tui_ctlx_keymap);
  FUNC2 ('q', tui_rl_next_keymap, tui_keymap);
  FUNC2 ('s', tui_rl_next_keymap, emacs_ctlx_keymap);
  FUNC2 ('s', tui_rl_next_keymap, tui_ctlx_keymap);
}