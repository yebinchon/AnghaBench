
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int endwin () ;
 scalar_t__ rl_already_prompted ;
 int rl_set_keymap (int ) ;
 scalar_t__ rl_startup_hook ;
 int target_terminal_save_ours () ;
 scalar_t__ tui_active ;
 int tui_readline_standard_keymap ;
 int tui_remove_hooks () ;
 int tui_setup_io (int ) ;
 int tui_update_gdb_sizes () ;

void
tui_disable (void)
{
  if (!tui_active)
    return;


  rl_set_keymap (tui_readline_standard_keymap);


  tui_remove_hooks ();
  rl_startup_hook = 0;
  rl_already_prompted = 0;


  endwin ();



  tui_setup_io (0);


  target_terminal_save_ours ();

  tui_active = 0;
  tui_update_gdb_sizes ();
}
