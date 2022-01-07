
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_has_memory; int to_has_stack; int to_has_registers; int to_magic; int to_pid_to_str; int to_thread_alive; int to_has_thread_control; int to_stratum; int to_create_inferior; void* to_remove_breakpoint; void* to_insert_breakpoint; int to_files_info; int to_xfer_partial; int to_xfer_memory; int to_fetch_registers; int to_detach; int to_attach; int to_close; int to_open; } ;


 int OPS_MAGIC ;
 int core_stratum ;
 void* ignore ;
 int sol_core_close ;
 int sol_core_detach ;
 int sol_core_files_info ;
 int sol_core_open ;
 TYPE_1__ sol_core_ops ;
 int sol_thread_alive ;
 int sol_thread_attach ;
 int sol_thread_create_inferior ;
 int sol_thread_fetch_registers ;
 int sol_thread_xfer_memory ;
 int sol_thread_xfer_partial ;
 int solaris_pid_to_str ;
 int tc_none ;

__attribute__((used)) static void
init_sol_core_ops (void)
{
  sol_core_ops.to_shortname = "solaris-core";
  sol_core_ops.to_longname = "Solaris core threads and pthread.";
  sol_core_ops.to_doc = "Solaris threads and pthread support for core files.";
  sol_core_ops.to_open = sol_core_open;
  sol_core_ops.to_close = sol_core_close;
  sol_core_ops.to_attach = sol_thread_attach;
  sol_core_ops.to_detach = sol_core_detach;
  sol_core_ops.to_fetch_registers = sol_thread_fetch_registers;
  sol_core_ops.to_xfer_memory = sol_thread_xfer_memory;
  sol_core_ops.to_xfer_partial = sol_thread_xfer_partial;
  sol_core_ops.to_files_info = sol_core_files_info;
  sol_core_ops.to_insert_breakpoint = ignore;
  sol_core_ops.to_remove_breakpoint = ignore;
  sol_core_ops.to_create_inferior = sol_thread_create_inferior;
  sol_core_ops.to_stratum = core_stratum;
  sol_core_ops.to_has_memory = 1;
  sol_core_ops.to_has_stack = 1;
  sol_core_ops.to_has_registers = 1;
  sol_core_ops.to_has_thread_control = tc_none;
  sol_core_ops.to_thread_alive = sol_thread_alive;
  sol_core_ops.to_pid_to_str = solaris_pid_to_str;





  sol_core_ops.to_magic = OPS_MAGIC;
}
