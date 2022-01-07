
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_has_all_memory; int to_has_memory; int to_magic; int to_stratum; int to_create_inferior; int to_lookup_symbol; int to_load; int to_files_info; int to_xfer_memory; int to_attach; int to_close; int to_open; } ;


 int OPS_MAGIC ;
 int core_stratum ;
 int vx_attach ;
 int vx_close ;
 int vx_create_inferior ;
 int vx_files_info ;
 int vx_load_command ;
 int vx_lookup_symbol ;
 int vx_open ;
 TYPE_1__ vx_ops ;
 int vx_xfer_memory ;

__attribute__((used)) static void
init_vx_ops (void)
{
  vx_ops.to_shortname = "vxworks";
  vx_ops.to_longname = "VxWorks target memory via RPC over TCP/IP";
  vx_ops.to_doc = "Use VxWorks target memory.  \nSpecify the name of the machine to connect to.";

  vx_ops.to_open = vx_open;
  vx_ops.to_close = vx_close;
  vx_ops.to_attach = vx_attach;
  vx_ops.to_xfer_memory = vx_xfer_memory;
  vx_ops.to_files_info = vx_files_info;
  vx_ops.to_load = vx_load_command;
  vx_ops.to_lookup_symbol = vx_lookup_symbol;
  vx_ops.to_create_inferior = vx_create_inferior;
  vx_ops.to_stratum = core_stratum;
  vx_ops.to_has_all_memory = 1;
  vx_ops.to_has_memory = 1;
  vx_ops.to_magic = OPS_MAGIC;
}
