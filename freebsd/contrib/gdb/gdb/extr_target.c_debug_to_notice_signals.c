
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ptid_t ;
struct TYPE_2__ {int (* to_notice_signals ) (int ) ;} ;


 int PIDGET (int ) ;
 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,int ) ;
 int gdb_stdlog ;
 int stub1 (int ) ;

__attribute__((used)) static void
debug_to_notice_signals (ptid_t ptid)
{
  debug_target.to_notice_signals (ptid);

  fprintf_unfiltered (gdb_stdlog, "target_notice_signals (%d)\n",
                      PIDGET (ptid));
}
