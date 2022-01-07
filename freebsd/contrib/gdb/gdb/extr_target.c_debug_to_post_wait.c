
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ptid_t ;
struct TYPE_2__ {int (* to_post_wait ) (int ,int) ;} ;


 int PIDGET (int ) ;
 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,int ,int) ;
 int gdb_stdlog ;
 int stub1 (int ,int) ;

__attribute__((used)) static void
debug_to_post_wait (ptid_t ptid, int status)
{
  debug_target.to_post_wait (ptid, status);

  fprintf_unfiltered (gdb_stdlog, "target_post_wait (%d, %d)\n",
        PIDGET (ptid), status);
}
