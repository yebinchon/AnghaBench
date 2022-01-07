
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_has_all_memory; int to_has_memory; int to_has_stack; int to_has_registers; int to_has_execution; int to_magic; int to_stratum; int to_stop; int to_mourn_inferior; int to_create_inferior; int to_load; int to_kill; int to_remove_breakpoint; int to_insert_breakpoint; int to_files_info; int to_xfer_memory; int to_prepare_to_store; int to_store_registers; int to_fetch_registers; int to_wait; int to_resume; int to_detach; int to_close; int to_open; } ;


 int OPS_MAGIC ;
 int e7000_close ;
 int e7000_create_inferior ;
 int e7000_detach ;
 int e7000_fetch_register ;
 int e7000_files_info ;
 int e7000_insert_breakpoint ;
 int e7000_kill ;
 int e7000_load ;
 int e7000_mourn_inferior ;
 int e7000_open ;
 TYPE_1__ e7000_ops ;
 int e7000_prepare_to_store ;
 int e7000_remove_breakpoint ;
 int e7000_resume ;
 int e7000_stop ;
 int e7000_store_register ;
 int e7000_wait ;
 int e7000_xfer_inferior_memory ;
 int process_stratum ;

__attribute__((used)) static void
init_e7000_ops (void)
{
  e7000_ops.to_shortname = "e7000";
  e7000_ops.to_longname = "Remote Renesas e7000 target";
  e7000_ops.to_doc = "Use a remote Renesas e7000 ICE connected by a serial line;\nor a network connection.\nArguments are the name of the device for the serial line,\nthe speed to connect at in bits per second.\neg\ntarget e7000 /dev/ttya 9600\ntarget e7000 foobar";






  e7000_ops.to_open = e7000_open;
  e7000_ops.to_close = e7000_close;
  e7000_ops.to_detach = e7000_detach;
  e7000_ops.to_resume = e7000_resume;
  e7000_ops.to_wait = e7000_wait;
  e7000_ops.to_fetch_registers = e7000_fetch_register;
  e7000_ops.to_store_registers = e7000_store_register;
  e7000_ops.to_prepare_to_store = e7000_prepare_to_store;
  e7000_ops.to_xfer_memory = e7000_xfer_inferior_memory;
  e7000_ops.to_files_info = e7000_files_info;
  e7000_ops.to_insert_breakpoint = e7000_insert_breakpoint;
  e7000_ops.to_remove_breakpoint = e7000_remove_breakpoint;
  e7000_ops.to_kill = e7000_kill;
  e7000_ops.to_load = e7000_load;
  e7000_ops.to_create_inferior = e7000_create_inferior;
  e7000_ops.to_mourn_inferior = e7000_mourn_inferior;
  e7000_ops.to_stop = e7000_stop;
  e7000_ops.to_stratum = process_stratum;
  e7000_ops.to_has_all_memory = 1;
  e7000_ops.to_has_memory = 1;
  e7000_ops.to_has_stack = 1;
  e7000_ops.to_has_registers = 1;
  e7000_ops.to_has_execution = 1;
  e7000_ops.to_magic = OPS_MAGIC;
}
