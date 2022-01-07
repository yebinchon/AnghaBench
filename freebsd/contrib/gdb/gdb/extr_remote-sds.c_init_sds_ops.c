
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_has_all_memory; int to_has_memory; int to_has_stack; int to_has_registers; int to_has_execution; int to_magic; int to_stratum; int to_mourn_inferior; int to_create_inferior; int to_load; int to_kill; int to_remove_breakpoint; int to_insert_breakpoint; int to_files_info; int to_xfer_memory; int to_prepare_to_store; int to_store_registers; int to_fetch_registers; int to_wait; int to_resume; int to_detach; int to_close; int to_open; } ;


 int OPS_MAGIC ;
 int process_stratum ;
 int sds_close ;
 int sds_create_inferior ;
 int sds_detach ;
 int sds_fetch_registers ;
 int sds_files_info ;
 int sds_insert_breakpoint ;
 int sds_kill ;
 int sds_load ;
 int sds_mourn ;
 int sds_open ;
 TYPE_1__ sds_ops ;
 int sds_prepare_to_store ;
 int sds_remove_breakpoint ;
 int sds_resume ;
 int sds_store_registers ;
 int sds_wait ;
 int sds_xfer_memory ;

__attribute__((used)) static void
init_sds_ops (void)
{
  sds_ops.to_shortname = "sds";
  sds_ops.to_longname = "Remote serial target with SDS protocol";
  sds_ops.to_doc = "Use a remote computer via a serial line; using the SDS protocol.\nSpecify the serial device it is connected to (e.g. /dev/ttya).";

  sds_ops.to_open = sds_open;
  sds_ops.to_close = sds_close;
  sds_ops.to_detach = sds_detach;
  sds_ops.to_resume = sds_resume;
  sds_ops.to_wait = sds_wait;
  sds_ops.to_fetch_registers = sds_fetch_registers;
  sds_ops.to_store_registers = sds_store_registers;
  sds_ops.to_prepare_to_store = sds_prepare_to_store;
  sds_ops.to_xfer_memory = sds_xfer_memory;
  sds_ops.to_files_info = sds_files_info;
  sds_ops.to_insert_breakpoint = sds_insert_breakpoint;
  sds_ops.to_remove_breakpoint = sds_remove_breakpoint;
  sds_ops.to_kill = sds_kill;
  sds_ops.to_load = sds_load;
  sds_ops.to_create_inferior = sds_create_inferior;
  sds_ops.to_mourn_inferior = sds_mourn;
  sds_ops.to_stratum = process_stratum;
  sds_ops.to_has_all_memory = 1;
  sds_ops.to_has_memory = 1;
  sds_ops.to_has_stack = 1;
  sds_ops.to_has_registers = 1;
  sds_ops.to_has_execution = 1;
  sds_ops.to_magic = OPS_MAGIC;
}
