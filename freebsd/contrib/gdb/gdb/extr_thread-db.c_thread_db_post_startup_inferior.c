
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ptid_t ;
struct TYPE_2__ {scalar_t__ pid; } ;


 scalar_t__ GET_PID (int ) ;
 int enable_thread_event_reporting () ;
 TYPE_1__ proc_handle ;
 int thread_db_find_new_threads () ;

__attribute__((used)) static void
thread_db_post_startup_inferior (ptid_t ptid)
{
  if (proc_handle.pid == 0)
    {


      proc_handle.pid = GET_PID (ptid);


      enable_thread_event_reporting ();
      thread_db_find_new_threads ();
    }
}
