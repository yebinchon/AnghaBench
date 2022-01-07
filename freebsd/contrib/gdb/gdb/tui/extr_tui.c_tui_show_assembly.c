
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int DISASSEM_WIN ;
 int tui_add_win_to_layout (int ) ;
 int tui_update_source_windows_with_addr (int ) ;

void
tui_show_assembly (CORE_ADDR addr)
{
  tui_add_win_to_layout (DISASSEM_WIN);
  tui_update_source_windows_with_addr (addr);
}
