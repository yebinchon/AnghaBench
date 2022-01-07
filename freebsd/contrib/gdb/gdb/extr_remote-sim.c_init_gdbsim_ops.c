
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* to_shortname; char* to_longname; char* to_doc; int to_has_all_memory; int to_has_memory; int to_has_stack; int to_has_registers; int to_has_execution; int to_magic; int to_stratum; int to_stop; int to_mourn_inferior; int to_create_inferior; int to_load; int to_kill; int to_remove_breakpoint; int to_insert_breakpoint; int to_files_info; int to_xfer_memory; int to_prepare_to_store; int to_store_registers; int to_fetch_registers; int to_wait; int to_resume; int to_detach; int to_close; int to_open; } ;


 int OPS_MAGIC ;
 int TARGET_REDEFINE_DEFAULT_OPS (TYPE_1__*) ;
 int gdbsim_close ;
 int gdbsim_create_inferior ;
 int gdbsim_detach ;
 int gdbsim_fetch_register ;
 int gdbsim_files_info ;
 int gdbsim_insert_breakpoint ;
 int gdbsim_kill ;
 int gdbsim_load ;
 int gdbsim_mourn_inferior ;
 int gdbsim_open ;
 TYPE_1__ gdbsim_ops ;
 int gdbsim_prepare_to_store ;
 int gdbsim_remove_breakpoint ;
 int gdbsim_resume ;
 int gdbsim_stop ;
 int gdbsim_store_register ;
 int gdbsim_wait ;
 int gdbsim_xfer_inferior_memory ;
 int process_stratum ;

__attribute__((used)) static void
init_gdbsim_ops (void)
{
  gdbsim_ops.to_shortname = "sim";
  gdbsim_ops.to_longname = "simulator";
  gdbsim_ops.to_doc = "Use the compiled-in simulator.";
  gdbsim_ops.to_open = gdbsim_open;
  gdbsim_ops.to_close = gdbsim_close;
  gdbsim_ops.to_detach = gdbsim_detach;
  gdbsim_ops.to_resume = gdbsim_resume;
  gdbsim_ops.to_wait = gdbsim_wait;
  gdbsim_ops.to_fetch_registers = gdbsim_fetch_register;
  gdbsim_ops.to_store_registers = gdbsim_store_register;
  gdbsim_ops.to_prepare_to_store = gdbsim_prepare_to_store;
  gdbsim_ops.to_xfer_memory = gdbsim_xfer_inferior_memory;
  gdbsim_ops.to_files_info = gdbsim_files_info;
  gdbsim_ops.to_insert_breakpoint = gdbsim_insert_breakpoint;
  gdbsim_ops.to_remove_breakpoint = gdbsim_remove_breakpoint;
  gdbsim_ops.to_kill = gdbsim_kill;
  gdbsim_ops.to_load = gdbsim_load;
  gdbsim_ops.to_create_inferior = gdbsim_create_inferior;
  gdbsim_ops.to_mourn_inferior = gdbsim_mourn_inferior;
  gdbsim_ops.to_stop = gdbsim_stop;
  gdbsim_ops.to_stratum = process_stratum;
  gdbsim_ops.to_has_all_memory = 1;
  gdbsim_ops.to_has_memory = 1;
  gdbsim_ops.to_has_stack = 1;
  gdbsim_ops.to_has_registers = 1;
  gdbsim_ops.to_has_execution = 1;
  gdbsim_ops.to_magic = OPS_MAGIC;




}
