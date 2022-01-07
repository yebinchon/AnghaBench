
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_has_exited ) (int,int,int*) ;} ;


 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,int,int,int,int) ;
 int gdb_stdlog ;
 int stub1 (int,int,int*) ;

__attribute__((used)) static int
debug_to_has_exited (int pid, int wait_status, int *exit_status)
{
  int has_exited;

  has_exited = debug_target.to_has_exited (pid, wait_status, exit_status);

  fprintf_unfiltered (gdb_stdlog, "target_has_exited (%d, %d, %d) = %d\n",
        pid, wait_status, *exit_status, has_exited);

  return has_exited;
}
