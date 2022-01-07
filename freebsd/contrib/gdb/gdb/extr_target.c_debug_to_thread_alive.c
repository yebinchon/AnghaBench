
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ptid_t ;
struct TYPE_2__ {int (* to_thread_alive ) (int ) ;} ;


 int PIDGET (int ) ;
 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,int ,int) ;
 int gdb_stdlog ;
 int stub1 (int ) ;

__attribute__((used)) static int
debug_to_thread_alive (ptid_t ptid)
{
  int retval;

  retval = debug_target.to_thread_alive (ptid);

  fprintf_unfiltered (gdb_stdlog, "target_thread_alive (%d) = %d\n",
        PIDGET (ptid), retval);

  return retval;
}
