
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_has_all_memory; int to_has_memory; int to_has_stack; int to_has_registers; int to_has_execution; int to_magic; int to_get_thread_local_address; int to_remove_breakpoint; int to_insert_breakpoint; int to_has_thread_control; int to_stratum; int to_pid_to_str; int to_find_new_threads; int to_thread_alive; int to_can_run; int to_mourn_inferior; int to_post_startup_inferior; int to_create_inferior; int to_kill; int to_files_info; int to_xfer_memory; int to_store_registers; int to_fetch_registers; int to_wait; int to_resume; int to_post_attach; int to_detach; int to_attach; } ;


 int OPS_MAGIC ;
 int fbsd_thread_alive ;
 int fbsd_thread_attach ;
 int fbsd_thread_can_run ;
 int fbsd_thread_create_inferior ;
 int fbsd_thread_detach ;
 int fbsd_thread_fetch_registers ;
 int fbsd_thread_files_info ;
 int fbsd_thread_find_new_threads ;
 int fbsd_thread_get_local_address ;
 int fbsd_thread_kill ;
 int fbsd_thread_mourn_inferior ;
 TYPE_1__ fbsd_thread_ops ;
 int fbsd_thread_pid_to_str ;
 int fbsd_thread_post_attach ;
 int fbsd_thread_post_startup_inferior ;
 int fbsd_thread_resume ;
 int fbsd_thread_store_registers ;
 int fbsd_thread_wait ;
 int fbsd_thread_xfer_memory ;
 int memory_insert_breakpoint ;
 int memory_remove_breakpoint ;
 int tc_none ;
 int thread_stratum ;

__attribute__((used)) static void
init_fbsd_thread_ops (void)
{
  fbsd_thread_ops.to_shortname = "freebsd-threads";
  fbsd_thread_ops.to_longname = "FreeBSD multithreaded child process.";
  fbsd_thread_ops.to_doc = "FreeBSD threads support.";
  fbsd_thread_ops.to_attach = fbsd_thread_attach;
  fbsd_thread_ops.to_detach = fbsd_thread_detach;
  fbsd_thread_ops.to_post_attach = fbsd_thread_post_attach;
  fbsd_thread_ops.to_resume = fbsd_thread_resume;
  fbsd_thread_ops.to_wait = fbsd_thread_wait;
  fbsd_thread_ops.to_fetch_registers = fbsd_thread_fetch_registers;
  fbsd_thread_ops.to_store_registers = fbsd_thread_store_registers;
  fbsd_thread_ops.to_xfer_memory = fbsd_thread_xfer_memory;
  fbsd_thread_ops.to_files_info = fbsd_thread_files_info;
  fbsd_thread_ops.to_kill = fbsd_thread_kill;
  fbsd_thread_ops.to_create_inferior = fbsd_thread_create_inferior;
  fbsd_thread_ops.to_post_startup_inferior = fbsd_thread_post_startup_inferior;
  fbsd_thread_ops.to_mourn_inferior = fbsd_thread_mourn_inferior;
  fbsd_thread_ops.to_can_run = fbsd_thread_can_run;
  fbsd_thread_ops.to_thread_alive = fbsd_thread_alive;
  fbsd_thread_ops.to_find_new_threads = fbsd_thread_find_new_threads;
  fbsd_thread_ops.to_pid_to_str = fbsd_thread_pid_to_str;
  fbsd_thread_ops.to_stratum = thread_stratum;
  fbsd_thread_ops.to_has_thread_control = tc_none;
  fbsd_thread_ops.to_has_all_memory = 1;
  fbsd_thread_ops.to_has_memory = 1;
  fbsd_thread_ops.to_has_stack = 1;
  fbsd_thread_ops.to_has_registers = 1;
  fbsd_thread_ops.to_has_execution = 1;
  fbsd_thread_ops.to_insert_breakpoint = memory_insert_breakpoint;
  fbsd_thread_ops.to_remove_breakpoint = memory_remove_breakpoint;
  fbsd_thread_ops.to_get_thread_local_address = fbsd_thread_get_local_address;
  fbsd_thread_ops.to_magic = OPS_MAGIC;
}
