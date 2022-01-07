
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char key; scalar_t__ cmd; } ;
typedef scalar_t__ Keymap ;


 char CTRL (char) ;
 int ISKMAP ;
 scalar_t__ emacs_ctlx_keymap ;
 int rl_add_defun (char*,int ,int) ;
 int rl_bind_key_in_map (char,int ,scalar_t__) ;
 int rl_generic_bind (int ,char*,char*,scalar_t__) ;
 int rl_get_keymap () ;
 int rl_initialize () ;
 scalar_t__ rl_make_bare_keymap () ;
 TYPE_1__* tui_commands ;
 scalar_t__ tui_keymap ;
 int tui_readline_standard_keymap ;
 int tui_rl_change_windows ;
 int tui_rl_command_key ;
 int tui_rl_command_mode ;
 int tui_rl_delete_other_windows ;
 int tui_rl_next_keymap ;
 int tui_rl_other_window ;
 int tui_rl_switch_mode ;

void
tui_initialize_readline (void)
{
  int i;
  Keymap tui_ctlx_keymap;

  rl_initialize ();

  rl_add_defun ("tui-switch-mode", tui_rl_switch_mode, -1);
  rl_add_defun ("gdb-command", tui_rl_command_key, -1);
  rl_add_defun ("next-keymap", tui_rl_next_keymap, -1);

  tui_keymap = rl_make_bare_keymap ();
  tui_ctlx_keymap = rl_make_bare_keymap ();
  tui_readline_standard_keymap = rl_get_keymap ();

  for (i = 0; tui_commands[i].cmd; i++)
    rl_bind_key_in_map (tui_commands[i].key, tui_rl_command_key, tui_keymap);

  rl_generic_bind (ISKMAP, "\\C-x", (char*) tui_ctlx_keymap, tui_keymap);



  for (i = ' '; i < 0x7f; i++)
    {
      int j;

      for (j = 0; tui_commands[j].cmd; j++)
        if (tui_commands[j].key == i)
          break;

      if (tui_commands[j].cmd)
        continue;

      rl_bind_key_in_map (i, tui_rl_command_mode, tui_keymap);
    }

  rl_bind_key_in_map ('a', tui_rl_switch_mode, emacs_ctlx_keymap);
  rl_bind_key_in_map ('a', tui_rl_switch_mode, tui_ctlx_keymap);
  rl_bind_key_in_map ('A', tui_rl_switch_mode, emacs_ctlx_keymap);
  rl_bind_key_in_map ('A', tui_rl_switch_mode, tui_ctlx_keymap);
  rl_bind_key_in_map (CTRL ('A'), tui_rl_switch_mode, emacs_ctlx_keymap);
  rl_bind_key_in_map (CTRL ('A'), tui_rl_switch_mode, tui_ctlx_keymap);
  rl_bind_key_in_map ('1', tui_rl_delete_other_windows, emacs_ctlx_keymap);
  rl_bind_key_in_map ('1', tui_rl_delete_other_windows, tui_ctlx_keymap);
  rl_bind_key_in_map ('2', tui_rl_change_windows, emacs_ctlx_keymap);
  rl_bind_key_in_map ('2', tui_rl_change_windows, tui_ctlx_keymap);
  rl_bind_key_in_map ('o', tui_rl_other_window, emacs_ctlx_keymap);
  rl_bind_key_in_map ('o', tui_rl_other_window, tui_ctlx_keymap);
  rl_bind_key_in_map ('q', tui_rl_next_keymap, tui_keymap);
  rl_bind_key_in_map ('s', tui_rl_next_keymap, emacs_ctlx_keymap);
  rl_bind_key_in_map ('s', tui_rl_next_keymap, tui_ctlx_keymap);
}
