
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_has_all_memory; int to_has_memory; int to_has_stack; int to_has_registers; int to_has_execution; int to_async_mask_value; int to_magic; int to_async; int to_is_async_p; int to_can_async_p; int to_has_thread_control; int to_stratum; int to_rcmd; int to_xfer_partial; int to_stop; int to_extra_thread_info; int to_pid_to_str; int to_find_new_threads; int to_thread_alive; int to_mourn_inferior; int to_load; int to_kill; int to_terminal_ours; int to_terminal_inferior; int to_stopped_data_address; int to_stopped_by_watchpoint; int to_remove_watchpoint; int to_insert_watchpoint; int to_remove_hw_breakpoint; int to_insert_hw_breakpoint; int to_can_use_hw_breakpoint; int to_remove_breakpoint; int to_insert_breakpoint; int to_files_info; int to_xfer_memory; int to_prepare_to_store; int to_store_registers; int to_fetch_registers; int to_wait; int to_resume; int to_disconnect; int to_detach; int to_close; int to_open; } ;


 int OPS_MAGIC ;
 int generic_load ;
 int process_stratum ;
 int remote_async ;
 int remote_async_kill ;
 int remote_async_mourn ;
 int remote_async_open ;
 TYPE_1__ remote_async_ops ;
 int remote_async_resume ;
 int remote_async_terminal_inferior ;
 int remote_async_terminal_ours ;
 int remote_async_wait ;
 int remote_can_async_p ;
 int remote_check_watch_resources ;
 int remote_close ;
 int remote_detach ;
 int remote_disconnect ;
 int remote_fetch_registers ;
 int remote_files_info ;
 int remote_insert_breakpoint ;
 int remote_insert_hw_breakpoint ;
 int remote_insert_watchpoint ;
 int remote_is_async_p ;
 int remote_pid_to_str ;
 int remote_prepare_to_store ;
 int remote_rcmd ;
 int remote_remove_breakpoint ;
 int remote_remove_hw_breakpoint ;
 int remote_remove_watchpoint ;
 int remote_stop ;
 int remote_stopped_by_watchpoint ;
 int remote_stopped_data_address ;
 int remote_store_registers ;
 int remote_thread_alive ;
 int remote_threads_extra_info ;
 int remote_threads_info ;
 int remote_xfer_memory ;
 int remote_xfer_partial ;
 int tc_schedlock ;

__attribute__((used)) static void
init_remote_async_ops (void)
{
  remote_async_ops.to_shortname = "async";
  remote_async_ops.to_longname = "Remote serial target in async version of the gdb-specific protocol";
  remote_async_ops.to_doc =
    "Use a remote computer via a serial line, using a gdb-specific protocol.\nSpecify the serial device it is connected to (e.g. /dev/ttya).";

  remote_async_ops.to_open = remote_async_open;
  remote_async_ops.to_close = remote_close;
  remote_async_ops.to_detach = remote_detach;
  remote_async_ops.to_disconnect = remote_disconnect;
  remote_async_ops.to_resume = remote_async_resume;
  remote_async_ops.to_wait = remote_async_wait;
  remote_async_ops.to_fetch_registers = remote_fetch_registers;
  remote_async_ops.to_store_registers = remote_store_registers;
  remote_async_ops.to_prepare_to_store = remote_prepare_to_store;
  remote_async_ops.to_xfer_memory = remote_xfer_memory;
  remote_async_ops.to_files_info = remote_files_info;
  remote_async_ops.to_insert_breakpoint = remote_insert_breakpoint;
  remote_async_ops.to_remove_breakpoint = remote_remove_breakpoint;
  remote_async_ops.to_can_use_hw_breakpoint = remote_check_watch_resources;
  remote_async_ops.to_insert_hw_breakpoint = remote_insert_hw_breakpoint;
  remote_async_ops.to_remove_hw_breakpoint = remote_remove_hw_breakpoint;
  remote_async_ops.to_insert_watchpoint = remote_insert_watchpoint;
  remote_async_ops.to_remove_watchpoint = remote_remove_watchpoint;
  remote_async_ops.to_stopped_by_watchpoint = remote_stopped_by_watchpoint;
  remote_async_ops.to_stopped_data_address = remote_stopped_data_address;
  remote_async_ops.to_terminal_inferior = remote_async_terminal_inferior;
  remote_async_ops.to_terminal_ours = remote_async_terminal_ours;
  remote_async_ops.to_kill = remote_async_kill;
  remote_async_ops.to_load = generic_load;
  remote_async_ops.to_mourn_inferior = remote_async_mourn;
  remote_async_ops.to_thread_alive = remote_thread_alive;
  remote_async_ops.to_find_new_threads = remote_threads_info;
  remote_async_ops.to_pid_to_str = remote_pid_to_str;
  remote_async_ops.to_extra_thread_info = remote_threads_extra_info;
  remote_async_ops.to_stop = remote_stop;
  remote_async_ops.to_xfer_partial = remote_xfer_partial;
  remote_async_ops.to_rcmd = remote_rcmd;
  remote_async_ops.to_stratum = process_stratum;
  remote_async_ops.to_has_all_memory = 1;
  remote_async_ops.to_has_memory = 1;
  remote_async_ops.to_has_stack = 1;
  remote_async_ops.to_has_registers = 1;
  remote_async_ops.to_has_execution = 1;
  remote_async_ops.to_has_thread_control = tc_schedlock;
  remote_async_ops.to_can_async_p = remote_can_async_p;
  remote_async_ops.to_is_async_p = remote_is_async_p;
  remote_async_ops.to_async = remote_async;
  remote_async_ops.to_async_mask_value = 1;
  remote_async_ops.to_magic = OPS_MAGIC;
}
