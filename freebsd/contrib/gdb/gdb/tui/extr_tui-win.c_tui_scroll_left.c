
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_win_info {int dummy; } ;


 int LEFT_SCROLL ;
 struct tui_win_info* TUI_CMD_WIN ;
 struct tui_win_info* TUI_DISASM_WIN ;
 struct tui_win_info* TUI_SRC_WIN ;
 int tui_horizontal_source_scroll (struct tui_win_info*,int ,int) ;

void
tui_scroll_left (struct tui_win_info * win_to_scroll, int num_to_scroll)
{
  if (win_to_scroll != TUI_CMD_WIN)
    {
      int _num_to_scroll = num_to_scroll;

      if (_num_to_scroll == 0)
 _num_to_scroll = 1;






      if (win_to_scroll == TUI_SRC_WIN || win_to_scroll == TUI_DISASM_WIN)
 tui_horizontal_source_scroll (win_to_scroll, LEFT_SCROLL, _num_to_scroll);
    }
}
