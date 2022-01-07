
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ptid_t ;
struct TYPE_3__ {int pid; } ;


 int GET_PID (int ) ;
 int fbsd_thread_activate () ;
 int fbsd_thread_active ;
 scalar_t__ fbsd_thread_present ;
 TYPE_1__ proc_handle ;
 int td_ta_new_p (TYPE_1__*,int *) ;
 int thread_agent ;

__attribute__((used)) static void
fbsd_thread_post_startup_inferior (ptid_t ptid)
{
  if (fbsd_thread_present && !fbsd_thread_active)
    {


      proc_handle.pid = GET_PID (ptid);
      td_ta_new_p (&proc_handle, &thread_agent);
      fbsd_thread_activate();
    }
}
