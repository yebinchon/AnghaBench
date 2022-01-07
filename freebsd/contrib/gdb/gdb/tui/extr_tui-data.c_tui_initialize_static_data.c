
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tui_disassem_exec_info_win_ptr () ;
 int tui_init_generic_part (int ) ;
 int tui_locator_win_info_ptr () ;
 int tui_source_exec_info_win_ptr () ;

void
tui_initialize_static_data (void)
{
  tui_init_generic_part (tui_source_exec_info_win_ptr ());
  tui_init_generic_part (tui_disassem_exec_info_win_ptr ());
  tui_init_generic_part (tui_locator_win_info_ptr ());
}
