
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct syscall_args {int code; TYPE_2__* callp; int * args; int narg; } ;
struct thread {scalar_t__ td_cowgen; int td_dbgflags; int td_errno; int td_pflags; int* td_retval; struct proc* td_proc; scalar_t__ td_pticks; struct syscall_args td_sa; } ;
struct proc {scalar_t__ p_cowgen; int p_flag; int p_ptevents; TYPE_1__* p_sysent; int p_pid; } ;
struct TYPE_5__ {int sy_flags; scalar_t__ sy_entry; int (* sy_call ) (struct thread*,int *) ;scalar_t__ sy_return; } ;
struct TYPE_4__ {int (* sv_fetch_syscall_args ) (struct thread*) ;int (* sv_set_syscall_retval ) (struct thread*,int) ;} ;


 int AUDIT_SYSCALL_ENTER (int ,struct thread*) ;
 int AUDIT_SYSCALL_EXIT (int,struct thread*) ;
 int ECAPMODE ;
 scalar_t__ IN_CAPABILITY_MODE (struct thread*) ;
 scalar_t__ KTRPOINT (struct thread*,int ) ;
 int KTR_START4 (int ,char*,int ,uintptr_t,char*,int ,char*,int ,char*,int ,char*,int ) ;
 int KTR_STOP4 (int ,char*,int ,uintptr_t,char*,int ,char*,int,char*,int,char*,int) ;
 int KTR_SYSC ;
 int KTR_SYSCALL ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int PTRACE_SCE ;
 int P_TRACED ;
 int SIGTRAP ;
 int STOPEVENT (struct proc*,int ,int ) ;
 int SYF_CAPENABLED ;
 int SYSTRACE_ENTRY ;
 int SYSTRACE_RETURN ;
 int S_SCE ;
 int TDB_SCE ;
 int TDB_USERWR ;
 int TDP_NERRNO ;
 int VM_CNT_INC (int ) ;
 scalar_t__ __predict_false (int) ;
 int ktrsyscall (int ,int ,int *) ;
 int ptracestop (struct thread*,int ,int *) ;
 int stub1 (struct thread*) ;
 int stub2 (struct thread*) ;
 int stub3 (struct syscall_args*,int ,int) ;
 int stub4 (struct thread*,int *) ;
 int stub5 (struct syscall_args*,int ,int) ;
 int stub6 (struct thread*,int) ;
 int syscall_thread_enter (struct thread*,TYPE_2__*) ;
 int syscall_thread_exit (struct thread*,TYPE_2__*) ;
 int syscallname (struct proc*,int ) ;
 scalar_t__ systrace_enabled ;
 int systrace_probe_func (struct syscall_args*,int ,int) ;
 int thread_cow_update (struct thread*) ;
 int v_syscall ;

__attribute__((used)) static inline void
syscallenter(struct thread *td)
{
 struct proc *p;
 struct syscall_args *sa;
 int error, traced;

 VM_CNT_INC(v_syscall);
 p = td->td_proc;
 sa = &td->td_sa;

 td->td_pticks = 0;
 if (__predict_false(td->td_cowgen != p->p_cowgen))
  thread_cow_update(td);
 traced = (p->p_flag & P_TRACED) != 0;
 if (traced || td->td_dbgflags & TDB_USERWR) {
  PROC_LOCK(p);
  td->td_dbgflags &= ~TDB_USERWR;
  if (traced)
   td->td_dbgflags |= TDB_SCE;
  PROC_UNLOCK(p);
 }
 error = (p->p_sysent->sv_fetch_syscall_args)(td);




 KTR_START4(KTR_SYSC, "syscall", syscallname(p, sa->code),
     (uintptr_t)td, "pid:%d", td->td_proc->p_pid, "arg0:%p", sa->args[0],
     "arg1:%p", sa->args[1], "arg2:%p", sa->args[2]);

 if (error != 0) {
  td->td_errno = error;
  goto retval;
 }

 STOPEVENT(p, S_SCE, sa->narg);
 if ((p->p_flag & P_TRACED) != 0) {
  PROC_LOCK(p);
  if (p->p_ptevents & PTRACE_SCE)
   ptracestop((td), SIGTRAP, ((void*)0));
  PROC_UNLOCK(p);
 }
 if ((td->td_dbgflags & TDB_USERWR) != 0) {




  error = (p->p_sysent->sv_fetch_syscall_args)(td);




  if (error != 0) {
   td->td_errno = error;
   goto retval;
  }
 }
 error = syscall_thread_enter(td, sa->callp);
 if (error != 0) {
  td->td_errno = error;
  goto retval;
 }
 td->td_pflags &= ~TDP_NERRNO;

 AUDIT_SYSCALL_ENTER(sa->code, td);
 error = (sa->callp->sy_call)(td, sa->args);
 AUDIT_SYSCALL_EXIT(error, td);


 if ((td->td_pflags & TDP_NERRNO) == 0)
  td->td_errno = error;







 syscall_thread_exit(td, sa->callp);

 retval:
 KTR_STOP4(KTR_SYSC, "syscall", syscallname(p, sa->code),
     (uintptr_t)td, "pid:%d", td->td_proc->p_pid, "error:%d", error,
     "retval0:%#lx", td->td_retval[0], "retval1:%#lx",
     td->td_retval[1]);
 if (traced) {
  PROC_LOCK(p);
  td->td_dbgflags &= ~TDB_SCE;
  PROC_UNLOCK(p);
 }
 (p->p_sysent->sv_set_syscall_retval)(td, error);
}
