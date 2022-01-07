
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sig; } ;
struct target_waitstatus {scalar_t__ kind; TYPE_1__ value; } ;
typedef int ptid_t ;
struct TYPE_6__ {scalar_t__ pid; } ;
struct TYPE_5__ {int (* to_wait ) (int ,struct target_waitstatus*) ;} ;


 int GET_PID (int ) ;
 scalar_t__ TARGET_SIGNAL_TRAP ;
 scalar_t__ TARGET_WAITKIND_EXITED ;
 scalar_t__ TARGET_WAITKIND_STOPPED ;
 int check_event (int ) ;
 scalar_t__ is_thread (int ) ;
 int lwp_from_thread (int ) ;
 int null_ptid ;
 int pid_to_ptid (int) ;
 TYPE_3__ proc_handle ;
 int ptid_equal (int ,int ) ;
 int stub1 (int ,struct target_waitstatus*) ;
 TYPE_2__* target_beneath ;
 int thread_from_lwp (int ) ;

__attribute__((used)) static ptid_t
thread_db_wait (ptid_t ptid, struct target_waitstatus *ourstatus)
{
  extern ptid_t trap_ptid;

  if (GET_PID (ptid) != -1 && is_thread (ptid))
    ptid = lwp_from_thread (ptid);

  ptid = target_beneath->to_wait (ptid, ourstatus);

  if (proc_handle.pid == 0)



    return ptid;

  if (ourstatus->kind == TARGET_WAITKIND_EXITED)
    return pid_to_ptid (-1);

  if (ourstatus->kind == TARGET_WAITKIND_STOPPED
      && ourstatus->value.sig == TARGET_SIGNAL_TRAP)

    check_event (ptid);

  if (!ptid_equal (trap_ptid, null_ptid))
    trap_ptid = thread_from_lwp (trap_ptid);

  return thread_from_lwp (ptid);
}
