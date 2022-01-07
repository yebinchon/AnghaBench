
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ptid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_2__ {int (* to_resume ) (int ,int,int) ;} ;


 int PIDGET (int ) ;
 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,int ,char*,int ) ;
 int gdb_stdlog ;
 int stub1 (int ,int,int) ;
 int target_signal_to_name (int) ;

__attribute__((used)) static void
debug_to_resume (ptid_t ptid, int step, enum target_signal siggnal)
{
  debug_target.to_resume (ptid, step, siggnal);

  fprintf_unfiltered (gdb_stdlog, "target_resume (%d, %s, %s)\n", PIDGET (ptid),
        step ? "step" : "continue",
        target_signal_to_name (siggnal));
}
