
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_can_run ) () ;} ;


 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,int) ;
 int gdb_stdlog ;
 int stub1 () ;

__attribute__((used)) static int
debug_to_can_run (void)
{
  int retval;

  retval = debug_target.to_can_run ();

  fprintf_unfiltered (gdb_stdlog, "target_can_run () = %d\n", retval);

  return retval;
}
