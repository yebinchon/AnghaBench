
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int * td_retval; TYPE_1__* td_proc; } ;
struct proc {int p_sigparent; int p_pid; } ;
struct linux_emuldata {int * child_clear_tid; int * child_set_tid; } ;
struct linux_clone_args {int flags; int tls; int stack; int * parent_tidptr; int * child_tidptr; } ;
struct fork_req {int fr_flags; struct proc** fr_procp; } ;
typedef int fr ;
struct TYPE_2__ {int p_pptr; } ;


 int EINVAL ;
 struct thread* FIRST_THREAD_IN_PROC (struct proc*) ;
 int KASSERT (int ,char*) ;
 int LINUX_CLONE_CHILD_CLEARTID ;
 int LINUX_CLONE_CHILD_SETTID ;
 int LINUX_CLONE_FILES ;
 int LINUX_CLONE_FS ;
 int LINUX_CLONE_PARENT ;
 int LINUX_CLONE_PARENT_SETTID ;
 int LINUX_CLONE_SETTLS ;
 int LINUX_CLONE_SIGHAND ;
 int LINUX_CLONE_VFORK ;
 int LINUX_CLONE_VM ;
 scalar_t__ LINUX_SIG_VALID (int) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int PTROUT (int ) ;
 int RFFDG ;
 int RFMEM ;
 int RFPPWAIT ;
 int RFPROC ;
 int RFSIGSHARE ;
 int RFSTOPPED ;
 int SRQ_BORING ;
 int TD_SET_CAN_RUN (struct thread*) ;
 int bzero (struct fork_req*,int) ;
 int copyout (int *,int *,int) ;
 struct linux_emuldata* em_find (struct thread*) ;
 int fork1 (struct thread*,struct fork_req*) ;
 int linux_msg (struct thread*,char*) ;
 int linux_proc_init (struct thread*,struct thread*,int) ;
 int linux_set_cloned_tls (struct thread*,int ) ;
 int linux_set_upcall_kse (struct thread*,int ) ;
 int linux_to_bsd_signal (int) ;
 int proc_reparent (struct proc*,int ,int) ;
 int proctree_lock ;
 int sched_add (struct thread*,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

__attribute__((used)) static int
linux_clone_proc(struct thread *td, struct linux_clone_args *args)
{
 struct fork_req fr;
 int error, ff = RFPROC | RFSTOPPED;
 struct proc *p2;
 struct thread *td2;
 int exit_signal;
 struct linux_emuldata *em;

 exit_signal = args->flags & 0x000000ff;
 if (LINUX_SIG_VALID(exit_signal)) {
  exit_signal = linux_to_bsd_signal(exit_signal);
 } else if (exit_signal != 0)
  return (EINVAL);

 if (args->flags & LINUX_CLONE_VM)
  ff |= RFMEM;
 if (args->flags & LINUX_CLONE_SIGHAND)
  ff |= RFSIGSHARE;






 if (!(args->flags & (LINUX_CLONE_FILES | LINUX_CLONE_FS)))
  ff |= RFFDG;

 if (args->flags & LINUX_CLONE_PARENT_SETTID)
  if (args->parent_tidptr == ((void*)0))
   return (EINVAL);

 if (args->flags & LINUX_CLONE_VFORK)
  ff |= RFPPWAIT;

 bzero(&fr, sizeof(fr));
 fr.fr_flags = ff;
 fr.fr_procp = &p2;
 error = fork1(td, &fr);
 if (error)
  return (error);

 td2 = FIRST_THREAD_IN_PROC(p2);


 linux_proc_init(td, td2, args->flags);

 em = em_find(td2);
 KASSERT(em != ((void*)0), ("clone_proc: emuldata not found.\n"));

 if (args->flags & LINUX_CLONE_CHILD_SETTID)
  em->child_set_tid = args->child_tidptr;
 else
  em->child_set_tid = ((void*)0);

 if (args->flags & LINUX_CLONE_CHILD_CLEARTID)
  em->child_clear_tid = args->child_tidptr;
 else
  em->child_clear_tid = ((void*)0);

 if (args->flags & LINUX_CLONE_PARENT_SETTID) {
  error = copyout(&p2->p_pid, args->parent_tidptr,
      sizeof(p2->p_pid));
  if (error)
   linux_msg(td, "copyout p_pid failed!");
 }

 PROC_LOCK(p2);
 p2->p_sigparent = exit_signal;
 PROC_UNLOCK(p2);





 linux_set_upcall_kse(td2, PTROUT(args->stack));

 if (args->flags & LINUX_CLONE_SETTLS)
  linux_set_cloned_tls(td2, args->tls);





 if (args->flags & LINUX_CLONE_PARENT) {
  sx_xlock(&proctree_lock);
  PROC_LOCK(p2);
  proc_reparent(p2, td->td_proc->p_pptr, 1);
  PROC_UNLOCK(p2);
  sx_xunlock(&proctree_lock);
 }




 thread_lock(td2);
 TD_SET_CAN_RUN(td2);
 sched_add(td2, SRQ_BORING);
 thread_unlock(td2);

 td->td_retval[0] = p2->p_pid;

 return (0);
}
