
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_magic; int to_xfer_partial; int to_make_corefile_notes; int to_find_memory_regions; int to_stratum; int to_pid_to_str; int to_create_inferior; int to_attach; } ;


 int OPS_MAGIC ;
 int default_xfer_partial ;
 int dummy_find_memory_regions ;
 int dummy_make_corefile_notes ;
 int dummy_stratum ;
 TYPE_1__ dummy_target ;
 int find_default_attach ;
 int find_default_create_inferior ;
 int normal_pid_to_str ;

__attribute__((used)) static void
init_dummy_target (void)
{
  dummy_target.to_shortname = "None";
  dummy_target.to_longname = "None";
  dummy_target.to_doc = "";
  dummy_target.to_attach = find_default_attach;
  dummy_target.to_create_inferior = find_default_create_inferior;
  dummy_target.to_pid_to_str = normal_pid_to_str;
  dummy_target.to_stratum = dummy_stratum;
  dummy_target.to_find_memory_regions = dummy_find_memory_regions;
  dummy_target.to_make_corefile_notes = dummy_make_corefile_notes;
  dummy_target.to_xfer_partial = default_xfer_partial;
  dummy_target.to_magic = OPS_MAGIC;
}
