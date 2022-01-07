
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_insert_watchpoint ) (scalar_t__,int,int) ;} ;
typedef scalar_t__ CORE_ADDR ;


 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,unsigned long,int,int,unsigned long) ;
 int gdb_stdlog ;
 int stub1 (scalar_t__,int,int) ;

__attribute__((used)) static int
debug_to_insert_watchpoint (CORE_ADDR addr, int len, int type)
{
  int retval;

  retval = debug_target.to_insert_watchpoint (addr, len, type);

  fprintf_unfiltered (gdb_stdlog,
        "target_insert_watchpoint (0x%lx, %d, %d) = %ld\n",
        (unsigned long) addr, len, type, (unsigned long) retval);
  return retval;
}
