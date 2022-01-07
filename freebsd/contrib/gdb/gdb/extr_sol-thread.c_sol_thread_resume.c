
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cleanup {int dummy; } ;
typedef int ptid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_4__ {int ptid; } ;
struct TYPE_3__ {int (* to_resume ) (int ,int,int) ;} ;


 int GET_THREAD (int ) ;
 int PIDGET (int ) ;
 int do_cleanups (struct cleanup*) ;
 int error (char*) ;
 int inferior_ptid ;
 scalar_t__ info_verbose ;
 TYPE_2__ main_ph ;
 int procfs_first_available () ;
 TYPE_1__ procfs_ops ;
 struct cleanup* save_inferior_ptid () ;
 int stub1 (int ,int,int) ;
 int thread_to_lwp (int ,int) ;
 int warning (char*,int ) ;

__attribute__((used)) static void
sol_thread_resume (ptid_t ptid, int step, enum target_signal signo)
{
  struct cleanup *old_chain;

  old_chain = save_inferior_ptid ();

  inferior_ptid = thread_to_lwp (inferior_ptid, PIDGET (main_ph.ptid));
  if (PIDGET (inferior_ptid) == -1)
    inferior_ptid = procfs_first_available ();

  if (PIDGET (ptid) != -1)
    {
      ptid_t save_ptid = ptid;

      ptid = thread_to_lwp (ptid, -2);
      if (PIDGET (ptid) == -2)
 error ("This version of Solaris can't start inactive threads.");
      if (info_verbose && PIDGET (ptid) == -1)
 warning ("Specified thread %ld seems to have terminated",
   GET_THREAD (save_ptid));
    }

  procfs_ops.to_resume (ptid, step, signo);

  do_cleanups (old_chain);
}
