
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int to_pid_to_exec_file; int to_get_current_exception_event; int to_enable_exception_callback; int to_rcmd; int to_xfer_partial; int to_stop; int to_find_new_threads; int to_thread_alive; int to_notice_signals; int to_can_run; int to_mourn_inferior; int to_has_exited; int to_reported_exec_events_per_exec_call; int to_remove_exec_catchpoint; int to_insert_exec_catchpoint; int to_follow_fork; int to_remove_vfork_catchpoint; int to_insert_vfork_catchpoint; int to_remove_fork_catchpoint; int to_insert_fork_catchpoint; int to_acknowledge_created_inferior; int to_post_startup_inferior; int to_create_inferior; int to_lookup_symbol; int to_load; int to_kill; int to_terminal_info; int to_terminal_save_ours; int to_terminal_ours; int to_terminal_ours_for_output; int to_terminal_inferior; int to_terminal_init; int to_region_size_ok_for_hw_watchpoint; int to_stopped_data_address; int to_stopped_by_watchpoint; int to_remove_watchpoint; int to_insert_watchpoint; int to_remove_hw_breakpoint; int to_insert_hw_breakpoint; int to_can_use_hw_breakpoint; int to_remove_breakpoint; int to_insert_breakpoint; int to_files_info; int to_xfer_memory; int to_prepare_to_store; int to_store_registers; int to_fetch_registers; int to_post_wait; int to_wait; int to_resume; int to_disconnect; int to_detach; int to_post_attach; int to_attach; int to_close; int to_open; } ;


 TYPE_1__ current_target ;
 int debug_target ;
 int debug_to_acknowledge_created_inferior ;
 int debug_to_attach ;
 int debug_to_can_run ;
 int debug_to_can_use_hw_breakpoint ;
 int debug_to_close ;
 int debug_to_create_inferior ;
 int debug_to_detach ;
 int debug_to_disconnect ;
 int debug_to_enable_exception_callback ;
 int debug_to_fetch_registers ;
 int debug_to_files_info ;
 int debug_to_find_new_threads ;
 int debug_to_follow_fork ;
 int debug_to_get_current_exception_event ;
 int debug_to_has_exited ;
 int debug_to_insert_breakpoint ;
 int debug_to_insert_exec_catchpoint ;
 int debug_to_insert_fork_catchpoint ;
 int debug_to_insert_hw_breakpoint ;
 int debug_to_insert_vfork_catchpoint ;
 int debug_to_insert_watchpoint ;
 int debug_to_kill ;
 int debug_to_load ;
 int debug_to_lookup_symbol ;
 int debug_to_mourn_inferior ;
 int debug_to_notice_signals ;
 int debug_to_open ;
 int debug_to_pid_to_exec_file ;
 int debug_to_post_attach ;
 int debug_to_post_startup_inferior ;
 int debug_to_post_wait ;
 int debug_to_prepare_to_store ;
 int debug_to_rcmd ;
 int debug_to_region_size_ok_for_hw_watchpoint ;
 int debug_to_remove_breakpoint ;
 int debug_to_remove_exec_catchpoint ;
 int debug_to_remove_fork_catchpoint ;
 int debug_to_remove_hw_breakpoint ;
 int debug_to_remove_vfork_catchpoint ;
 int debug_to_remove_watchpoint ;
 int debug_to_reported_exec_events_per_exec_call ;
 int debug_to_resume ;
 int debug_to_stop ;
 int debug_to_stopped_by_watchpoint ;
 int debug_to_stopped_data_address ;
 int debug_to_store_registers ;
 int debug_to_terminal_inferior ;
 int debug_to_terminal_info ;
 int debug_to_terminal_init ;
 int debug_to_terminal_ours ;
 int debug_to_terminal_ours_for_output ;
 int debug_to_terminal_save_ours ;
 int debug_to_thread_alive ;
 int debug_to_wait ;
 int debug_to_xfer_memory ;
 int debug_to_xfer_partial ;
 int memcpy (int *,TYPE_1__*,int) ;

__attribute__((used)) static void
setup_target_debug (void)
{
  memcpy (&debug_target, &current_target, sizeof debug_target);

  current_target.to_open = debug_to_open;
  current_target.to_close = debug_to_close;
  current_target.to_attach = debug_to_attach;
  current_target.to_post_attach = debug_to_post_attach;
  current_target.to_detach = debug_to_detach;
  current_target.to_disconnect = debug_to_disconnect;
  current_target.to_resume = debug_to_resume;
  current_target.to_wait = debug_to_wait;
  current_target.to_post_wait = debug_to_post_wait;
  current_target.to_fetch_registers = debug_to_fetch_registers;
  current_target.to_store_registers = debug_to_store_registers;
  current_target.to_prepare_to_store = debug_to_prepare_to_store;
  current_target.to_xfer_memory = debug_to_xfer_memory;
  current_target.to_files_info = debug_to_files_info;
  current_target.to_insert_breakpoint = debug_to_insert_breakpoint;
  current_target.to_remove_breakpoint = debug_to_remove_breakpoint;
  current_target.to_can_use_hw_breakpoint = debug_to_can_use_hw_breakpoint;
  current_target.to_insert_hw_breakpoint = debug_to_insert_hw_breakpoint;
  current_target.to_remove_hw_breakpoint = debug_to_remove_hw_breakpoint;
  current_target.to_insert_watchpoint = debug_to_insert_watchpoint;
  current_target.to_remove_watchpoint = debug_to_remove_watchpoint;
  current_target.to_stopped_by_watchpoint = debug_to_stopped_by_watchpoint;
  current_target.to_stopped_data_address = debug_to_stopped_data_address;
  current_target.to_region_size_ok_for_hw_watchpoint = debug_to_region_size_ok_for_hw_watchpoint;
  current_target.to_terminal_init = debug_to_terminal_init;
  current_target.to_terminal_inferior = debug_to_terminal_inferior;
  current_target.to_terminal_ours_for_output = debug_to_terminal_ours_for_output;
  current_target.to_terminal_ours = debug_to_terminal_ours;
  current_target.to_terminal_save_ours = debug_to_terminal_save_ours;
  current_target.to_terminal_info = debug_to_terminal_info;
  current_target.to_kill = debug_to_kill;
  current_target.to_load = debug_to_load;
  current_target.to_lookup_symbol = debug_to_lookup_symbol;
  current_target.to_create_inferior = debug_to_create_inferior;
  current_target.to_post_startup_inferior = debug_to_post_startup_inferior;
  current_target.to_acknowledge_created_inferior = debug_to_acknowledge_created_inferior;
  current_target.to_insert_fork_catchpoint = debug_to_insert_fork_catchpoint;
  current_target.to_remove_fork_catchpoint = debug_to_remove_fork_catchpoint;
  current_target.to_insert_vfork_catchpoint = debug_to_insert_vfork_catchpoint;
  current_target.to_remove_vfork_catchpoint = debug_to_remove_vfork_catchpoint;
  current_target.to_follow_fork = debug_to_follow_fork;
  current_target.to_insert_exec_catchpoint = debug_to_insert_exec_catchpoint;
  current_target.to_remove_exec_catchpoint = debug_to_remove_exec_catchpoint;
  current_target.to_reported_exec_events_per_exec_call = debug_to_reported_exec_events_per_exec_call;
  current_target.to_has_exited = debug_to_has_exited;
  current_target.to_mourn_inferior = debug_to_mourn_inferior;
  current_target.to_can_run = debug_to_can_run;
  current_target.to_notice_signals = debug_to_notice_signals;
  current_target.to_thread_alive = debug_to_thread_alive;
  current_target.to_find_new_threads = debug_to_find_new_threads;
  current_target.to_stop = debug_to_stop;
  current_target.to_xfer_partial = debug_to_xfer_partial;
  current_target.to_rcmd = debug_to_rcmd;
  current_target.to_enable_exception_callback = debug_to_enable_exception_callback;
  current_target.to_get_current_exception_event = debug_to_get_current_exception_event;
  current_target.to_pid_to_exec_file = debug_to_pid_to_exec_file;

}
