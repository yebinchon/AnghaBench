
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tui_key_mode { ____Placeholder_tui_key_mode } tui_key_mode ;


 int TUI_SINGLE_KEY_MODE ;
 int rl_set_keymap (int ) ;
 int tui_current_key_mode ;
 int tui_keymap ;
 int tui_readline_standard_keymap ;
 int tui_show_locator_content () ;

void
tui_set_key_mode (enum tui_key_mode mode)
{
  tui_current_key_mode = mode;
  rl_set_keymap (mode == TUI_SINGLE_KEY_MODE
                 ? tui_keymap : tui_readline_standard_keymap);
  tui_show_locator_content ();
}
