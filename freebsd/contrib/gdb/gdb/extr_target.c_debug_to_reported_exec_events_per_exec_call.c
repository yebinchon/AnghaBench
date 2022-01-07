
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_reported_exec_events_per_exec_call ) () ;} ;


 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,int) ;
 int gdb_stdlog ;
 int stub1 () ;

__attribute__((used)) static int
debug_to_reported_exec_events_per_exec_call (void)
{
  int reported_exec_events;

  reported_exec_events = debug_target.to_reported_exec_events_per_exec_call ();

  fprintf_unfiltered (gdb_stdlog,
        "target_reported_exec_events_per_exec_call () = %d\n",
        reported_exec_events);

  return reported_exec_events;
}
