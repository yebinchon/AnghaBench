
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct thread {struct proc* td_proc; } ;
struct proc {int p_pid; } ;
struct TYPE_4__ {scalar_t__ ksi_signo; } ;
typedef TYPE_1__ ksiginfo_t ;


 int AUDIT_ARG_PID (int ) ;
 int AUDIT_ARG_PROCESS (struct proc*) ;
 int AUDIT_ARG_SIGNUM (scalar_t__) ;
 int PROC_UNLOCK (struct proc*) ;
 int p_cansignal (struct thread*,struct proc*,scalar_t__) ;
 int tdksignal (struct thread*,scalar_t__,TYPE_1__*) ;

__attribute__((used)) static int
linux_do_tkill(struct thread *td, struct thread *tdt, ksiginfo_t *ksi)
{
 struct proc *p;
 int error;

 p = tdt->td_proc;
 AUDIT_ARG_SIGNUM(ksi->ksi_signo);
 AUDIT_ARG_PID(p->p_pid);
 AUDIT_ARG_PROCESS(p);

 error = p_cansignal(td, p, ksi->ksi_signo);
 if (error != 0 || ksi->ksi_signo == 0)
  goto out;

 tdksignal(tdt, ksi->ksi_signo, ksi);

out:
 PROC_UNLOCK(p);
 return (error);
}
