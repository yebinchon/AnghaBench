
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_has_all_memory; int to_has_memory; int to_has_stack; int to_has_registers; int to_has_execution; int to_magic; int to_stratum; int to_stop; int to_pid_to_str; int to_thread_alive; int to_can_run; int to_mourn_inferior; int to_create_inferior; int to_kill; int to_terminal_info; int to_terminal_save_ours; int to_terminal_ours; int to_terminal_ours_for_output; int to_terminal_inferior; int to_terminal_init; int to_remove_breakpoint; int to_insert_breakpoint; int to_files_info; int to_xfer_memory; int to_prepare_to_store; int to_store_registers; int to_fetch_registers; int to_wait; int to_resume; int to_detach; int to_attach; int to_close; int to_open; } ;


 int OPS_MAGIC ;
 int child_attach ;
 int child_can_run ;
 int child_close ;
 int child_create_inferior ;
 int child_detach ;
 int child_fetch_inferior_registers ;
 int child_files_info ;
 int child_kill_inferior ;
 int child_mourn_inferior ;
 int child_open ;
 TYPE_1__ child_ops ;
 int child_prepare_to_store ;
 int child_resume ;
 int child_stop ;
 int child_store_inferior_registers ;
 int child_terminal_info ;
 int child_wait ;
 int child_xfer_memory ;
 int cygwin_pid_to_str ;
 int memory_insert_breakpoint ;
 int memory_remove_breakpoint ;
 int process_stratum ;
 int terminal_inferior ;
 int terminal_init_inferior ;
 int terminal_ours ;
 int terminal_ours_for_output ;
 int terminal_save_ours ;
 int win32_child_thread_alive ;

__attribute__((used)) static void
init_child_ops (void)
{
  child_ops.to_shortname = "child";
  child_ops.to_longname = "Win32 child process";
  child_ops.to_doc = "Win32 child process (started by the \"run\" command).";
  child_ops.to_open = child_open;
  child_ops.to_close = child_close;
  child_ops.to_attach = child_attach;
  child_ops.to_detach = child_detach;
  child_ops.to_resume = child_resume;
  child_ops.to_wait = child_wait;
  child_ops.to_fetch_registers = child_fetch_inferior_registers;
  child_ops.to_store_registers = child_store_inferior_registers;
  child_ops.to_prepare_to_store = child_prepare_to_store;
  child_ops.to_xfer_memory = child_xfer_memory;
  child_ops.to_files_info = child_files_info;
  child_ops.to_insert_breakpoint = memory_insert_breakpoint;
  child_ops.to_remove_breakpoint = memory_remove_breakpoint;
  child_ops.to_terminal_init = terminal_init_inferior;
  child_ops.to_terminal_inferior = terminal_inferior;
  child_ops.to_terminal_ours_for_output = terminal_ours_for_output;
  child_ops.to_terminal_ours = terminal_ours;
  child_ops.to_terminal_save_ours = terminal_save_ours;
  child_ops.to_terminal_info = child_terminal_info;
  child_ops.to_kill = child_kill_inferior;
  child_ops.to_create_inferior = child_create_inferior;
  child_ops.to_mourn_inferior = child_mourn_inferior;
  child_ops.to_can_run = child_can_run;
  child_ops.to_thread_alive = win32_child_thread_alive;
  child_ops.to_pid_to_str = cygwin_pid_to_str;
  child_ops.to_stop = child_stop;
  child_ops.to_stratum = process_stratum;
  child_ops.to_has_all_memory = 1;
  child_ops.to_has_memory = 1;
  child_ops.to_has_stack = 1;
  child_ops.to_has_registers = 1;
  child_ops.to_has_execution = 1;
  child_ops.to_magic = OPS_MAGIC;
}
