
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union tui_line_or_address {int addr; } ;
struct tui_win_info {int dummy; } ;
struct symtab {int dummy; } ;
typedef int CORE_ADDR ;


 int DISASSEM_WIN ;
 int FALSE ;
 scalar_t__ SRC_DISASSEM_COMMAND ;
 int TUI_DISASM_WIN ;
 struct tui_win_info* TUI_SRC_WIN ;
 struct symtab* find_pc_symtab (int ) ;
 int tui_add_win_to_layout (int ) ;
 scalar_t__ tui_current_layout () ;
 int tui_set_win_focus_to (int ) ;
 int tui_update_source_window (int ,struct symtab*,union tui_line_or_address,int ) ;
 struct tui_win_info* tui_win_with_focus () ;

void
tui_show_disassem (CORE_ADDR start_addr)
{
  struct symtab *s = find_pc_symtab (start_addr);
  struct tui_win_info * win_with_focus = tui_win_with_focus ();
  union tui_line_or_address val;

  val.addr = start_addr;
  tui_add_win_to_layout (DISASSEM_WIN);
  tui_update_source_window (TUI_DISASM_WIN, s, val, FALSE);




  if (tui_current_layout () != SRC_DISASSEM_COMMAND && win_with_focus == TUI_SRC_WIN)
    tui_set_win_focus_to (TUI_DISASM_WIN);

  return;
}
