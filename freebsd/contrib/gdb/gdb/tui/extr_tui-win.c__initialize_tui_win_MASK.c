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
struct cmd_list_element {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct cmd_list_element**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cmd_list_element* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,struct cmd_list_element**) ; 
 int /*<<< orphan*/  FUNC5 (struct cmd_list_element*,struct cmd_list_element**) ; 
 int /*<<< orphan*/  class_tui ; 
 int /*<<< orphan*/  class_xdb ; 
 int /*<<< orphan*/  no_class ; 
 int /*<<< orphan*/  set_tui_cmd ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  show_tui_cmd ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  tui_active_border_mode ; 
 int /*<<< orphan*/  tui_all_windows_info ; 
 int /*<<< orphan*/  tui_border_kind ; 
 int /*<<< orphan*/  tui_border_kind_enums ; 
 int /*<<< orphan*/  tui_border_mode ; 
 int /*<<< orphan*/  tui_border_mode_enums ; 
 int /*<<< orphan*/  tui_refresh_all_command ; 
 int /*<<< orphan*/  tui_scroll_backward_command ; 
 int /*<<< orphan*/  tui_scroll_forward_command ; 
 int /*<<< orphan*/  tui_scroll_left_command ; 
 int /*<<< orphan*/  tui_scroll_right_command ; 
 int /*<<< orphan*/  tui_set_focus_command ; 
 int /*<<< orphan*/  tui_set_tab_width_command ; 
 int /*<<< orphan*/  tui_set_win_height_command ; 
 int /*<<< orphan*/  tui_xdb_set_win_height_command ; 
 scalar_t__ xdb_commands ; 

void
FUNC6 (void)
{
  struct cmd_list_element *c;
  static struct cmd_list_element *tui_setlist;
  static struct cmd_list_element *tui_showlist;

  /* Define the classes of commands.
     They will appear in the help list in the reverse of this order.  */
  FUNC3 ("tui", class_tui, set_tui_cmd,
                  "TUI configuration variables",
		  &tui_setlist, "set tui ",
		  0/*allow-unknown*/, &setlist);
  FUNC3 ("tui", class_tui, show_tui_cmd,
                  "TUI configuration variables",
		  &tui_showlist, "show tui ",
		  0/*allow-unknown*/, &showlist);

  FUNC0 ("refresh", class_tui, tui_refresh_all_command,
           "Refresh the terminal display.\n");
  if (xdb_commands)
    FUNC1 ("U", "refresh", class_tui, 0);
  FUNC0 ("tabset", class_tui, tui_set_tab_width_command,
           "Set the width (in characters) of tab stops.\n\
Usage: tabset <n>\n");
  FUNC0 ("winheight", class_tui, tui_set_win_height_command,
           "Set the height of a specified window.\n\
Usage: winheight <win_name> [+ | -] <#lines>\n\
Window names are:\n\
src  : the source window\n\
cmd  : the command window\n\
asm  : the disassembly window\n\
regs : the register display\n");
  FUNC1 ("wh", "winheight", class_tui, 0);
  FUNC2 ("win", tui_all_windows_info,
            "List of all displayed windows.\n");
  FUNC0 ("focus", class_tui, tui_set_focus_command,
           "Set focus to named window or next/prev window.\n\
Usage: focus {<win> | next | prev}\n\
Valid Window names are:\n\
src  : the source window\n\
asm  : the disassembly window\n\
regs : the register display\n\
cmd  : the command window\n");
  FUNC1 ("fs", "focus", class_tui, 0);
  FUNC0 ("+", class_tui, tui_scroll_forward_command,
           "Scroll window forward.\nUsage: + [win] [n]\n");
  FUNC0 ("-", class_tui, tui_scroll_backward_command,
           "Scroll window backward.\nUsage: - [win] [n]\n");
  FUNC0 ("<", class_tui, tui_scroll_left_command,
           "Scroll window forward.\nUsage: < [win] [n]\n");
  FUNC0 (">", class_tui, tui_scroll_right_command,
           "Scroll window backward.\nUsage: > [win] [n]\n");
  if (xdb_commands)
    FUNC0 ("w", class_xdb, tui_xdb_set_win_height_command,
             "XDB compatibility command for setting the height of a command window.\n\
Usage: w <#lines>\n");

  /* Define the tui control variables.  */
  c = FUNC4
    ("border-kind", no_class,
     tui_border_kind_enums, &tui_border_kind,
     "Set the kind of border for TUI windows.\n"
     "This variable controls the border of TUI windows:\n"
     "space           use a white space\n"
     "ascii           use ascii characters + - | for the border\n"
     "acs             use the Alternate Character Set\n",
     &tui_setlist);
  FUNC5 (c, &tui_showlist);

  c = FUNC4
    ("border-mode", no_class,
     tui_border_mode_enums, &tui_border_mode,
     "Set the attribute mode to use for the TUI window borders.\n"
     "This variable controls the attributes to use for the window borders:\n"
     "normal          normal display\n"
     "standout        use highlight mode of terminal\n"
     "reverse         use reverse video mode\n"
     "half            use half bright\n"
     "half-standout   use half bright and standout mode\n"
     "bold            use extra bright or bold\n"
     "bold-standout   use extra bright or bold with standout mode\n",
     &tui_setlist);
  FUNC5 (c, &tui_showlist);

  c = FUNC4
    ("active-border-mode", no_class,
     tui_border_mode_enums, &tui_active_border_mode,
     "Set the attribute mode to use for the active TUI window border.\n"
     "This variable controls the attributes to use for the active window border:\n"
     "normal          normal display\n"
     "standout        use highlight mode of terminal\n"
     "reverse         use reverse video mode\n"
     "half            use half bright\n"
     "half-standout   use half bright and standout mode\n"
     "bold            use extra bright or bold\n"
     "bold-standout   use extra bright or bold with standout mode\n",
     &tui_setlist);
  FUNC5 (c, &tui_showlist);
}