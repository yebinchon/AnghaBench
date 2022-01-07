
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_has_all_memory; int to_has_memory; int to_has_stack; int to_has_registers; int to_has_execution; int to_magic; int to_stratum; int to_mourn_inferior; int to_create_inferior; int to_load; int to_kill; int to_remove_breakpoint; int to_insert_breakpoint; int to_files_info; int to_xfer_memory; int to_prepare_to_store; int to_store_registers; int to_fetch_registers; int to_stop; int to_wait; int to_resume; int to_detach; int to_close; int to_open; } ;


 int OPS_MAGIC ;
 int arm_rdi_close ;
 int arm_rdi_create_inferior ;
 int arm_rdi_detach ;
 int arm_rdi_fetch_registers ;
 int arm_rdi_files_info ;
 int arm_rdi_insert_breakpoint ;
 int arm_rdi_kill ;
 int arm_rdi_mourn_inferior ;
 int arm_rdi_open ;
 TYPE_1__ arm_rdi_ops ;
 int arm_rdi_prepare_to_store ;
 int arm_rdi_remove_breakpoint ;
 int arm_rdi_resume ;
 int arm_rdi_stop ;
 int arm_rdi_store_registers ;
 int arm_rdi_wait ;
 int arm_rdi_xfer_memory ;
 int generic_load ;
 int process_stratum ;

__attribute__((used)) static void
init_rdi_ops (void)
{
  arm_rdi_ops.to_shortname = "rdi";
  arm_rdi_ops.to_longname = "ARM RDI";
  arm_rdi_ops.to_doc = "Use a remote ARM-based computer; via the RDI library.\nSpecify the serial device it is connected to (e.g. /dev/ttya).";

  arm_rdi_ops.to_open = arm_rdi_open;
  arm_rdi_ops.to_close = arm_rdi_close;
  arm_rdi_ops.to_detach = arm_rdi_detach;
  arm_rdi_ops.to_resume = arm_rdi_resume;
  arm_rdi_ops.to_wait = arm_rdi_wait;
  arm_rdi_ops.to_stop = arm_rdi_stop;
  arm_rdi_ops.to_fetch_registers = arm_rdi_fetch_registers;
  arm_rdi_ops.to_store_registers = arm_rdi_store_registers;
  arm_rdi_ops.to_prepare_to_store = arm_rdi_prepare_to_store;
  arm_rdi_ops.to_xfer_memory = arm_rdi_xfer_memory;
  arm_rdi_ops.to_files_info = arm_rdi_files_info;
  arm_rdi_ops.to_insert_breakpoint = arm_rdi_insert_breakpoint;
  arm_rdi_ops.to_remove_breakpoint = arm_rdi_remove_breakpoint;
  arm_rdi_ops.to_kill = arm_rdi_kill;
  arm_rdi_ops.to_load = generic_load;
  arm_rdi_ops.to_create_inferior = arm_rdi_create_inferior;
  arm_rdi_ops.to_mourn_inferior = arm_rdi_mourn_inferior;
  arm_rdi_ops.to_stratum = process_stratum;
  arm_rdi_ops.to_has_all_memory = 1;
  arm_rdi_ops.to_has_memory = 1;
  arm_rdi_ops.to_has_stack = 1;
  arm_rdi_ops.to_has_registers = 1;
  arm_rdi_ops.to_has_execution = 1;
  arm_rdi_ops.to_magic = OPS_MAGIC;
}
