
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_layout_def {size_t display_mode; int regs_display_type; scalar_t__ split; } ;


 int DISASSEM_DATA_COMMAND ;
 int SRC_COMMAND ;
 int SRC_DISASSEM_COMMAND ;
 size_t SRC_WIN ;
 int TUI_UNDEFINED_REGS ;
 int tui_set_layout (int ,int ) ;
 int tui_set_win_focus_to (int ) ;
 int * tui_win_list ;

__attribute__((used)) static void
tui_handle_xdb_layout (struct tui_layout_def * layout_def)
{
  if (layout_def->split)
    {
      tui_set_layout (SRC_DISASSEM_COMMAND, TUI_UNDEFINED_REGS);
      tui_set_win_focus_to (tui_win_list[layout_def->display_mode]);
    }
  else
    {
      if (layout_def->display_mode == SRC_WIN)
 tui_set_layout (SRC_COMMAND, TUI_UNDEFINED_REGS);
      else
 tui_set_layout (DISASSEM_DATA_COMMAND, layout_def->regs_display_type);
    }
}
