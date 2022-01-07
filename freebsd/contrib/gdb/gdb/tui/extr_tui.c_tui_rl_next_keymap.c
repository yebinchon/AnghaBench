
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TUI_COMMAND_MODE ;
 scalar_t__ TUI_SINGLE_KEY_MODE ;
 int tui_active ;
 scalar_t__ tui_current_key_mode ;
 int tui_rl_switch_mode (int ,int ) ;
 int tui_set_key_mode (scalar_t__) ;

__attribute__((used)) static int
tui_rl_next_keymap (int notused1, int notused2)
{
  if (!tui_active)
    tui_rl_switch_mode (0 , 0 );

  tui_set_key_mode (tui_current_key_mode == TUI_COMMAND_MODE
                    ? TUI_SINGLE_KEY_MODE : TUI_COMMAND_MODE);
  return 0;
}
