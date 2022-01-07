
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_remove_breakpoint ) (scalar_t__,char*) ;} ;
typedef scalar_t__ CORE_ADDR ;


 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,unsigned long,unsigned long) ;
 int gdb_stdlog ;
 int stub1 (scalar_t__,char*) ;

__attribute__((used)) static int
debug_to_remove_breakpoint (CORE_ADDR addr, char *save)
{
  int retval;

  retval = debug_target.to_remove_breakpoint (addr, save);

  fprintf_unfiltered (gdb_stdlog,
        "target_remove_breakpoint (0x%lx, xxx) = %ld\n",
        (unsigned long) addr,
        (unsigned long) retval);
  return retval;
}
