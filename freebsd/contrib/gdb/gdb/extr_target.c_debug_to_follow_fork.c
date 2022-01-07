
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_follow_fork ) (int) ;} ;


 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,int,int) ;
 int gdb_stdlog ;
 int stub1 (int) ;

__attribute__((used)) static int
debug_to_follow_fork (int follow_child)
{
  int retval = debug_target.to_follow_fork (follow_child);

  fprintf_unfiltered (gdb_stdlog, "target_follow_fork (%d) = %d\n",
        follow_child, retval);

  return retval;
}
