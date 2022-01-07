
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int add_com (char*,int ,int ,char*) ;
 int add_com_alias (char*,char*,int ,int ) ;
 int add_info (char*,int ,char*) ;
 int add_prefix_cmd (char*,int ,int ,char*,struct cmd_list_element**,char*,int ,int *) ;
 struct cmd_list_element* add_set_enum_cmd (char*,int ,int ,int *,char*,struct cmd_list_element**) ;
 int add_show_from_set (struct cmd_list_element*,struct cmd_list_element**) ;
 int class_tui ;
 int class_xdb ;
 int no_class ;
 int set_tui_cmd ;
 int setlist ;
 int show_tui_cmd ;
 int showlist ;
 int tui_active_border_mode ;
 int tui_all_windows_info ;
 int tui_border_kind ;
 int tui_border_kind_enums ;
 int tui_border_mode ;
 int tui_border_mode_enums ;
 int tui_refresh_all_command ;
 int tui_scroll_backward_command ;
 int tui_scroll_forward_command ;
 int tui_scroll_left_command ;
 int tui_scroll_right_command ;
 int tui_set_focus_command ;
 int tui_set_tab_width_command ;
 int tui_set_win_height_command ;
 int tui_xdb_set_win_height_command ;
 scalar_t__ xdb_commands ;

void
_initialize_tui_win (void)
{
  struct cmd_list_element *c;
  static struct cmd_list_element *tui_setlist;
  static struct cmd_list_element *tui_showlist;



  add_prefix_cmd ("tui", class_tui, set_tui_cmd,
                  "TUI configuration variables",
    &tui_setlist, "set tui ",
    0 , &setlist);
  add_prefix_cmd ("tui", class_tui, show_tui_cmd,
                  "TUI configuration variables",
    &tui_showlist, "show tui ",
    0 , &showlist);

  add_com ("refresh", class_tui, tui_refresh_all_command,
           "Refresh the terminal display.\n");
  if (xdb_commands)
    add_com_alias ("U", "refresh", class_tui, 0);
  add_com ("tabset", class_tui, tui_set_tab_width_command,
           "Set the width (in characters) of tab stops.\nUsage: tabset <n>\n");

  add_com ("winheight", class_tui, tui_set_win_height_command,
           "Set the height of a specified window.\nUsage: winheight <win_name> [+ | -] <#lines>\nWindow names are:\nsrc  : the source window\ncmd  : the command window\nasm  : the disassembly window\nregs : the register display\n");






  add_com_alias ("wh", "winheight", class_tui, 0);
  add_info ("win", tui_all_windows_info,
            "List of all displayed windows.\n");
  add_com ("focus", class_tui, tui_set_focus_command,
           "Set focus to named window or next/prev window.\nUsage: focus {<win> | next | prev}\nValid Window names are:\nsrc  : the source window\nasm  : the disassembly window\nregs : the register display\ncmd  : the command window\n");






  add_com_alias ("fs", "focus", class_tui, 0);
  add_com ("+", class_tui, tui_scroll_forward_command,
           "Scroll window forward.\nUsage: + [win] [n]\n");
  add_com ("-", class_tui, tui_scroll_backward_command,
           "Scroll window backward.\nUsage: - [win] [n]\n");
  add_com ("<", class_tui, tui_scroll_left_command,
           "Scroll window forward.\nUsage: < [win] [n]\n");
  add_com (">", class_tui, tui_scroll_right_command,
           "Scroll window backward.\nUsage: > [win] [n]\n");
  if (xdb_commands)
    add_com ("w", class_xdb, tui_xdb_set_win_height_command,
             "XDB compatibility command for setting the height of a command window.\nUsage: w <#lines>\n");



  c = add_set_enum_cmd
    ("border-kind", no_class,
     tui_border_kind_enums, &tui_border_kind,
     "Set the kind of border for TUI windows.\n"
     "This variable controls the border of TUI windows:\n"
     "space           use a white space\n"
     "ascii           use ascii characters + - | for the border\n"
     "acs             use the Alternate Character Set\n",
     &tui_setlist);
  add_show_from_set (c, &tui_showlist);

  c = add_set_enum_cmd
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
  add_show_from_set (c, &tui_showlist);

  c = add_set_enum_cmd
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
  add_show_from_set (c, &tui_showlist);
}
