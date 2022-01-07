
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_stopped_by_watchpoint ) () ;} ;


 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,unsigned long) ;
 int gdb_stdlog ;
 int stub1 () ;

__attribute__((used)) static int
debug_to_stopped_by_watchpoint (void)
{
  int retval;

  retval = debug_target.to_stopped_by_watchpoint ();

  fprintf_unfiltered (gdb_stdlog,
        "STOPPED_BY_WATCHPOINT () = %ld\n",
        (unsigned long) retval);
  return retval;
}
