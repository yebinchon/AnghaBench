
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_has_memory; int to_has_stack; int to_has_registers; int to_has_execution; int to_magic; int to_stratum; int to_mourn_inferior; int to_lookup_symbol; int to_load; int to_kill; int to_remove_breakpoint; int to_insert_breakpoint; int to_files_info; int to_xfer_memory; int to_prepare_to_store; int to_store_registers; int to_fetch_registers; int to_wait; int to_resume; int to_detach; int to_close; int to_open; } ;


 int OPS_MAGIC ;
 int process_stratum ;
 int vx_detach ;
 int vx_insert_breakpoint ;
 int vx_kill ;
 int vx_load_command ;
 int vx_lookup_symbol ;
 int vx_mourn_inferior ;
 int vx_prepare_to_store ;
 int vx_proc_close ;
 int vx_proc_open ;
 int vx_read_register ;
 int vx_remove_breakpoint ;
 int vx_resume ;
 int vx_run_files_info ;
 TYPE_1__ vx_run_ops ;
 int vx_wait ;
 int vx_write_register ;
 int vx_xfer_memory ;

__attribute__((used)) static void
init_vx_run_ops (void)
{
  vx_run_ops.to_shortname = "vxprocess";
  vx_run_ops.to_longname = "VxWorks process";
  vx_run_ops.to_doc = "VxWorks process; started by the \"run\" command.";
  vx_run_ops.to_open = vx_proc_open;
  vx_run_ops.to_close = vx_proc_close;
  vx_run_ops.to_detach = vx_detach;
  vx_run_ops.to_resume = vx_resume;
  vx_run_ops.to_wait = vx_wait;
  vx_run_ops.to_fetch_registers = vx_read_register;
  vx_run_ops.to_store_registers = vx_write_register;
  vx_run_ops.to_prepare_to_store = vx_prepare_to_store;
  vx_run_ops.to_xfer_memory = vx_xfer_memory;
  vx_run_ops.to_files_info = vx_run_files_info;
  vx_run_ops.to_insert_breakpoint = vx_insert_breakpoint;
  vx_run_ops.to_remove_breakpoint = vx_remove_breakpoint;
  vx_run_ops.to_kill = vx_kill;
  vx_run_ops.to_load = vx_load_command;
  vx_run_ops.to_lookup_symbol = vx_lookup_symbol;
  vx_run_ops.to_mourn_inferior = vx_mourn_inferior;
  vx_run_ops.to_stratum = process_stratum;
  vx_run_ops.to_has_memory = 1;
  vx_run_ops.to_has_stack = 1;
  vx_run_ops.to_has_registers = 1;
  vx_run_ops.to_has_execution = 1;
  vx_run_ops.to_magic = OPS_MAGIC;
}
