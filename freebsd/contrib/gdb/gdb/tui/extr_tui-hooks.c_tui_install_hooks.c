
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int detach_hook ;
 int print_frame_info_listing_hook ;
 int query_hook ;
 int register_changed_hook ;
 int registers_changed_hook ;
 int selected_frame_level_changed_hook ;
 int set_gdb_event_hooks (int *) ;
 int target_wait_hook ;
 int tui_detach_hook ;
 int tui_event_hooks ;
 int tui_old_event_hooks ;
 int tui_print_frame_info_listing_hook ;
 int tui_query_hook ;
 int tui_register_changed_hook ;
 int tui_registers_changed_hook ;
 int tui_selected_frame_level_changed_hook ;
 int tui_target_wait_hook ;

void
tui_install_hooks (void)
{
  target_wait_hook = tui_target_wait_hook;
  selected_frame_level_changed_hook = tui_selected_frame_level_changed_hook;
  print_frame_info_listing_hook = tui_print_frame_info_listing_hook;

  query_hook = tui_query_hook;


  tui_old_event_hooks = set_gdb_event_hooks (&tui_event_hooks);

  registers_changed_hook = tui_registers_changed_hook;
  register_changed_hook = tui_register_changed_hook;
  detach_hook = tui_detach_hook;
}
