
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct proc {int dummy; } ;
struct TYPE_3__ {int t_dtrace_stop; int t_sig_check; } ;


 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int SIGSTOP ;
 int aston (TYPE_1__*) ;
 struct proc* curproc ;
 TYPE_1__* curthread ;
 scalar_t__ dtrace_destructive_disallow ;
 int kern_psignal (struct proc*,int ) ;

__attribute__((used)) static void
dtrace_action_stop(void)
{
 if (dtrace_destructive_disallow)
  return;
 struct proc *p = curproc;
 PROC_LOCK(p);
 kern_psignal(p, SIGSTOP);
 PROC_UNLOCK(p);

}
