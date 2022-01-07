
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_has_all_memory; int to_has_memory; int to_has_stack; int to_has_registers; int to_has_execution; int to_magic; int to_stratum; int to_mourn_inferior; int to_create_inferior; int to_load; int to_kill; int to_remove_breakpoint; int to_insert_breakpoint; int to_files_info; int to_xfer_memory; int to_prepare_to_store; int to_store_registers; int to_fetch_registers; int to_wait; int to_resume; int to_attach; int to_close; int to_open; } ;


 int OPS_MAGIC ;
 int generic_load ;
 int generic_mourn_inferior ;
 int process_stratum ;
 int remote_rdp_attach ;
 int remote_rdp_close ;
 int remote_rdp_create_inferior ;
 int remote_rdp_fetch_register ;
 int remote_rdp_files_info ;
 int remote_rdp_insert_breakpoint ;
 int remote_rdp_kill ;
 int remote_rdp_open ;
 TYPE_1__ remote_rdp_ops ;
 int remote_rdp_prepare_to_store ;
 int remote_rdp_remove_breakpoint ;
 int remote_rdp_resume ;
 int remote_rdp_store_register ;
 int remote_rdp_wait ;
 int remote_rdp_xfer_inferior_memory ;

__attribute__((used)) static void
init_remote_rdp_ops (void)
{
  remote_rdp_ops.to_shortname = "rdp";
  remote_rdp_ops.to_longname = "Remote Target using the RDProtocol";
  remote_rdp_ops.to_doc = "Use a remote ARM system which uses the ARM Remote Debugging Protocol";
  remote_rdp_ops.to_open = remote_rdp_open;
  remote_rdp_ops.to_close = remote_rdp_close;
  remote_rdp_ops.to_attach = remote_rdp_attach;
  remote_rdp_ops.to_resume = remote_rdp_resume;
  remote_rdp_ops.to_wait = remote_rdp_wait;
  remote_rdp_ops.to_fetch_registers = remote_rdp_fetch_register;
  remote_rdp_ops.to_store_registers = remote_rdp_store_register;
  remote_rdp_ops.to_prepare_to_store = remote_rdp_prepare_to_store;
  remote_rdp_ops.to_xfer_memory = remote_rdp_xfer_inferior_memory;
  remote_rdp_ops.to_files_info = remote_rdp_files_info;
  remote_rdp_ops.to_insert_breakpoint = remote_rdp_insert_breakpoint;
  remote_rdp_ops.to_remove_breakpoint = remote_rdp_remove_breakpoint;
  remote_rdp_ops.to_kill = remote_rdp_kill;
  remote_rdp_ops.to_load = generic_load;
  remote_rdp_ops.to_create_inferior = remote_rdp_create_inferior;
  remote_rdp_ops.to_mourn_inferior = generic_mourn_inferior;
  remote_rdp_ops.to_stratum = process_stratum;
  remote_rdp_ops.to_has_all_memory = 1;
  remote_rdp_ops.to_has_memory = 1;
  remote_rdp_ops.to_has_stack = 1;
  remote_rdp_ops.to_has_registers = 1;
  remote_rdp_ops.to_has_execution = 1;
  remote_rdp_ops.to_magic = OPS_MAGIC;
}
