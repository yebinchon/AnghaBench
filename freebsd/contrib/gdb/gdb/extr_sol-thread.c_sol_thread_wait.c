
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct target_waitstatus {scalar_t__ kind; } ;
struct cleanup {int dummy; } ;
typedef int ptid_t ;
struct TYPE_4__ {int ptid; } ;
struct TYPE_3__ {int (* to_wait ) (int ,struct target_waitstatus*) ;} ;


 int GET_THREAD (int ) ;
 int PIDGET (int ) ;
 scalar_t__ TARGET_WAITKIND_EXITED ;
 int add_thread (int ) ;
 int do_cleanups (struct cleanup*) ;
 int error (char*) ;
 int in_thread_list (int ) ;
 int inferior_ptid ;
 scalar_t__ info_verbose ;
 scalar_t__ is_thread (int ) ;
 int lwp_to_thread (int ) ;
 TYPE_2__ main_ph ;
 int printf_filtered (char*,int ) ;
 int procfs_first_available () ;
 TYPE_1__ procfs_ops ;
 int ptid_equal (int ,int ) ;
 struct cleanup* save_inferior_ptid () ;
 int stub1 (int ,struct target_waitstatus*) ;
 int target_pid_to_str (int ) ;
 int thread_to_lwp (int ,int) ;
 int warning (char*,int ) ;

__attribute__((used)) static ptid_t
sol_thread_wait (ptid_t ptid, struct target_waitstatus *ourstatus)
{
  ptid_t rtnval;
  ptid_t save_ptid;
  struct cleanup *old_chain;

  save_ptid = inferior_ptid;
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

  rtnval = procfs_ops.to_wait (ptid, ourstatus);

  if (ourstatus->kind != TARGET_WAITKIND_EXITED)
    {

      rtnval = lwp_to_thread (rtnval);
      if (PIDGET (rtnval) == -1)
 rtnval = save_ptid;


      if (is_thread (rtnval)
   && !ptid_equal (rtnval, save_ptid)
   && !in_thread_list (rtnval))
 {
   printf_filtered ("[New %s]\n", target_pid_to_str (rtnval));
   add_thread (rtnval);
 }
    }





  do_cleanups (old_chain);

  return rtnval;
}
