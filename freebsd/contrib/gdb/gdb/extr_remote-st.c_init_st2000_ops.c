
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_has_all_memory; int to_has_memory; int to_has_stack; int to_has_registers; int to_has_execution; int to_magic; int to_stratum; int to_mourn_inferior; int to_create_inferior; int to_kill; int to_remove_breakpoint; int to_insert_breakpoint; int to_files_info; int to_xfer_memory; int to_prepare_to_store; int to_store_registers; int to_fetch_registers; int to_wait; int to_resume; int to_detach; int to_close; int to_open; } ;


 int OPS_MAGIC ;
 int process_stratum ;
 int st2000_close ;
 int st2000_create_inferior ;
 int st2000_detach ;
 int st2000_fetch_register ;
 int st2000_files_info ;
 int st2000_insert_breakpoint ;
 int st2000_kill ;
 int st2000_mourn_inferior ;
 int st2000_open ;
 TYPE_1__ st2000_ops ;
 int st2000_prepare_to_store ;
 int st2000_remove_breakpoint ;
 int st2000_resume ;
 int st2000_store_register ;
 int st2000_wait ;
 int st2000_xfer_inferior_memory ;

__attribute__((used)) static void
init_st2000_ops (void)
{
  st2000_ops.to_shortname = "st2000";
  st2000_ops.to_longname = "Remote serial Tandem ST2000 target";
  st2000_ops.to_doc = "Use a remote computer running STDEBUG connected by a serial line;\nor a network connection.\nArguments are the name of the device for the serial line,\nthe speed to connect at in bits per second.";



  st2000_ops.to_open = st2000_open;
  st2000_ops.to_close = st2000_close;
  st2000_ops.to_detach = st2000_detach;
  st2000_ops.to_resume = st2000_resume;
  st2000_ops.to_wait = st2000_wait;
  st2000_ops.to_fetch_registers = st2000_fetch_register;
  st2000_ops.to_store_registers = st2000_store_register;
  st2000_ops.to_prepare_to_store = st2000_prepare_to_store;
  st2000_ops.to_xfer_memory = st2000_xfer_inferior_memory;
  st2000_ops.to_files_info = st2000_files_info;
  st2000_ops.to_insert_breakpoint = st2000_insert_breakpoint;
  st2000_ops.to_remove_breakpoint = st2000_remove_breakpoint;
  st2000_ops.to_kill = st2000_kill;
  st2000_ops.to_create_inferior = st2000_create_inferior;
  st2000_ops.to_mourn_inferior = st2000_mourn_inferior;
  st2000_ops.to_stratum = process_stratum;
  st2000_ops.to_has_all_memory = 1;
  st2000_ops.to_has_memory = 1;
  st2000_ops.to_has_stack = 1;
  st2000_ops.to_has_registers = 1;
  st2000_ops.to_has_execution = 1;
  st2000_ops.to_magic = OPS_MAGIC;
}
