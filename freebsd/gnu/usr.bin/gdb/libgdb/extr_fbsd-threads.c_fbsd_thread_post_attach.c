
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* to_post_attach ) (int) ;} ;
struct TYPE_3__ {int pid; } ;


 int GET_PID (int ) ;
 TYPE_2__ child_ops ;
 int fbsd_thread_activate () ;
 int fbsd_thread_active ;
 scalar_t__ fbsd_thread_present ;
 int inferior_ptid ;
 TYPE_1__ proc_handle ;
 int stub1 (int) ;

__attribute__((used)) static void
fbsd_thread_post_attach (int pid)
{
  child_ops.to_post_attach (pid);

  if (fbsd_thread_present && !fbsd_thread_active)
    {
      proc_handle.pid = GET_PID (inferior_ptid);
      fbsd_thread_activate ();
    }
}
