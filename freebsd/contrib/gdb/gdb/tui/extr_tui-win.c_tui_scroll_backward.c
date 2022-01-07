
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; } ;
struct tui_win_info {TYPE_1__ generic; } ;


 int BACKWARD_SCROLL ;
 struct tui_win_info* TUI_CMD_WIN ;
 struct tui_win_info* TUI_DATA_WIN ;
 struct tui_win_info* TUI_DISASM_WIN ;
 struct tui_win_info* TUI_SRC_WIN ;
 int tui_vertical_data_scroll (int ,int) ;
 int tui_vertical_disassem_scroll (int ,int) ;
 int tui_vertical_source_scroll (int ,int) ;

void
tui_scroll_backward (struct tui_win_info * win_to_scroll, int num_to_scroll)
{
  if (win_to_scroll != TUI_CMD_WIN)
    {
      int _num_to_scroll = num_to_scroll;

      if (num_to_scroll == 0)
 _num_to_scroll = win_to_scroll->generic.height - 3;






      if (win_to_scroll == TUI_SRC_WIN)
 tui_vertical_source_scroll (BACKWARD_SCROLL, _num_to_scroll);
      else if (win_to_scroll == TUI_DISASM_WIN)
 tui_vertical_disassem_scroll (BACKWARD_SCROLL, _num_to_scroll);
      else if (win_to_scroll == TUI_DATA_WIN)
 tui_vertical_data_scroll (BACKWARD_SCROLL, _num_to_scroll);
    }
}
