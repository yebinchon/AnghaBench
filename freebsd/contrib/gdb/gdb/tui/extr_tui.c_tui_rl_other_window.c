
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int handle; } ;
struct tui_win_info {TYPE_2__ generic; } ;
struct TYPE_4__ {scalar_t__ is_visible; } ;
struct TYPE_6__ {TYPE_1__ generic; } ;


 struct tui_win_info* TUI_CMD_WIN ;
 TYPE_3__* TUI_DATA_WIN ;
 int keypad (int ,int) ;
 int tui_active ;
 struct tui_win_info* tui_next_win (int ) ;
 int tui_refresh_data_win () ;
 int tui_rl_switch_mode (int ,int ) ;
 int tui_set_win_focus_to (struct tui_win_info*) ;
 int tui_win_with_focus () ;

__attribute__((used)) static int
tui_rl_other_window (int count, int key)
{
  struct tui_win_info * win_info;

  if (!tui_active)
    tui_rl_switch_mode (0 , 0 );

  win_info = tui_next_win (tui_win_with_focus ());
  if (win_info)
    {
      tui_set_win_focus_to (win_info);
      if (TUI_DATA_WIN && TUI_DATA_WIN->generic.is_visible)
        tui_refresh_data_win ();
      keypad (TUI_CMD_WIN->generic.handle, (win_info != TUI_CMD_WIN));
    }
  return 0;
}
