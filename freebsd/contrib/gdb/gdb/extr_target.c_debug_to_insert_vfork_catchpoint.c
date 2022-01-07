
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_insert_vfork_catchpoint ) (int) ;} ;


 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,int,int) ;
 int gdb_stdlog ;
 int stub1 (int) ;

__attribute__((used)) static int
debug_to_insert_vfork_catchpoint (int pid)
{
  int retval;

  retval = debug_target.to_insert_vfork_catchpoint (pid);

  fprintf_unfiltered (gdb_stdlog, "target_insert_vfork_catchpoint (%d)= %d\n",
        pid, retval);

  return retval;
}
