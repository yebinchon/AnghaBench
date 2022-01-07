
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sig; } ;
struct target_waitstatus {scalar_t__ kind; TYPE_1__ value; } ;
typedef int ptid_t ;
struct TYPE_4__ {int (* to_wait ) (int ,struct target_waitstatus*) ;} ;


 int CALL_BASE (int ) ;
 scalar_t__ PIDGET (int ) ;
 scalar_t__ TARGET_SIGNAL_TRAP ;
 scalar_t__ TARGET_WAITKIND_STOPPED ;
 TYPE_2__ base_ops ;
 int libthread_stub (int ) ;
 int lwp_to_thr (int ) ;
 int pid_to_ptid (int) ;
 int stub1 (int ,struct target_waitstatus*) ;
 int thr_to_lwp (int ) ;

__attribute__((used)) static ptid_t
uw_thread_wait (ptid_t ptid, struct target_waitstatus *status)
{
  if (PIDGET (ptid) > 0)
    ptid = thr_to_lwp (ptid);
  if (PIDGET (ptid) <= 0)
    ptid = pid_to_ptid (-1);

  CALL_BASE (ptid = base_ops.to_wait (ptid, status));

  if (status->kind == TARGET_WAITKIND_STOPPED &&
      status->value.sig == TARGET_SIGNAL_TRAP)
    libthread_stub (ptid);

  return lwp_to_thr (ptid);
}
