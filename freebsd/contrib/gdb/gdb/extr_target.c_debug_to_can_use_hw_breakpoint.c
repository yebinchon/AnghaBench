
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_can_use_hw_breakpoint ) (int,int,int) ;} ;


 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int gdb_stdlog ;
 int stub1 (int,int,int) ;

__attribute__((used)) static int
debug_to_can_use_hw_breakpoint (int type, int cnt, int from_tty)
{
  int retval;

  retval = debug_target.to_can_use_hw_breakpoint (type, cnt, from_tty);

  fprintf_unfiltered (gdb_stdlog,
        "target_can_use_hw_breakpoint (%ld, %ld, %ld) = %ld\n",
        (unsigned long) type,
        (unsigned long) cnt,
        (unsigned long) from_tty,
        (unsigned long) retval);
  return retval;
}
