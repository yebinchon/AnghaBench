
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pid; } ;
struct TYPE_3__ {int (* to_detach ) (char*,int) ;} ;


 int disable_thread_event_reporting () ;
 int inferior_ptid ;
 int lwp_from_thread (int ) ;
 TYPE_2__ proc_handle ;
 int stub1 (char*,int) ;
 TYPE_1__* target_beneath ;

__attribute__((used)) static void
thread_db_detach (char *args, int from_tty)
{
  disable_thread_event_reporting ();



  inferior_ptid = lwp_from_thread (inferior_ptid);



  proc_handle.pid = 0;

  target_beneath->to_detach (args, from_tty);
}
