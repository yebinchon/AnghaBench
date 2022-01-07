
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TUI_COMMAND_MODE ;
 int TUI_SINGLE_KEY_MODE ;
 int rl_already_prompted ;
 scalar_t__ tui_current_key_mode ;
 int tui_redisplay_readline () ;
 int tui_set_key_mode (int ) ;

__attribute__((used)) static int
tui_rl_startup_hook (void)
{
  rl_already_prompted = 1;
  if (tui_current_key_mode != TUI_COMMAND_MODE)
    tui_set_key_mode (TUI_SINGLE_KEY_MODE);
  tui_redisplay_readline ();
  return 0;
}
