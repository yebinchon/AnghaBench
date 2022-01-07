
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint64_t ;
struct proc {int dummy; } ;
struct TYPE_3__ {scalar_t__ t_dtrace_sig; int t_sig_check; } ;


 int CPU_DTRACE_ILLOP ;
 int DTRACE_CPUFLAG_SET (int ) ;
 scalar_t__ NSIG ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int aston (TYPE_1__*) ;
 struct proc* curproc ;
 TYPE_1__* curthread ;
 scalar_t__ dtrace_destructive_disallow ;
 int kern_psignal (struct proc*,scalar_t__) ;

__attribute__((used)) static void
dtrace_action_raise(uint64_t sig)
{
 if (dtrace_destructive_disallow)
  return;

 if (sig >= NSIG) {
  DTRACE_CPUFLAG_SET(CPU_DTRACE_ILLOP);
  return;
 }
 struct proc *p = curproc;
 PROC_LOCK(p);
 kern_psignal(p, sig);
 PROC_UNLOCK(p);

}
