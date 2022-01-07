
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pid; } ;
struct TYPE_3__ {int (* to_attach ) (char*,int) ;} ;


 int GET_PID (int ) ;
 int enable_thread_event_reporting () ;
 int inferior_ptid ;
 int init_thread_list () ;
 TYPE_2__ proc_handle ;
 int stub1 (char*,int) ;
 TYPE_1__* target_beneath ;
 int thread_db_find_new_threads () ;

__attribute__((used)) static void
thread_db_attach (char *args, int from_tty)
{
  target_beneath->to_attach (args, from_tty);


  init_thread_list ();



  proc_handle.pid = GET_PID (inferior_ptid);


  enable_thread_event_reporting ();
  thread_db_find_new_threads ();
}
