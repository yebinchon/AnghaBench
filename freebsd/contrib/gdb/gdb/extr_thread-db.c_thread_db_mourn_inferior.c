
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pid; } ;
struct TYPE_3__ {int (* to_mourn_inferior ) () ;} ;


 int keep_thread_db ;
 TYPE_2__ proc_handle ;
 int remove_thread_event_breakpoints () ;
 int stub1 () ;
 TYPE_1__* target_beneath ;
 int thread_db_ops ;
 int unpush_target (int *) ;
 scalar_t__ using_thread_db ;

__attribute__((used)) static void
thread_db_mourn_inferior (void)
{
  remove_thread_event_breakpoints ();



  proc_handle.pid = 0;

  target_beneath->to_mourn_inferior ();







  if (!keep_thread_db)
    {
      unpush_target (&thread_db_ops);
      using_thread_db = 0;
    }
}
