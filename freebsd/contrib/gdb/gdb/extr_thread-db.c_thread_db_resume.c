
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cleanup {int dummy; } ;
typedef int ptid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_2__ {int (* to_resume ) (int ,int,int) ;} ;


 int GET_PID (int ) ;
 int clear_lwpid_callback ;
 int do_cleanups (struct cleanup*) ;
 int inferior_ptid ;
 scalar_t__ is_thread (int ) ;
 int iterate_over_threads (int ,int *) ;
 int lwp_from_thread (int ) ;
 struct cleanup* save_inferior_ptid () ;
 int stub1 (int ,int,int) ;
 TYPE_1__* target_beneath ;

__attribute__((used)) static void
thread_db_resume (ptid_t ptid, int step, enum target_signal signo)
{
  struct cleanup *old_chain = save_inferior_ptid ();

  if (GET_PID (ptid) == -1)
    inferior_ptid = lwp_from_thread (inferior_ptid);
  else if (is_thread (ptid))
    ptid = lwp_from_thread (ptid);


  iterate_over_threads (clear_lwpid_callback, ((void*)0));

  target_beneath->to_resume (ptid, step, signo);

  do_cleanups (old_chain);
}
