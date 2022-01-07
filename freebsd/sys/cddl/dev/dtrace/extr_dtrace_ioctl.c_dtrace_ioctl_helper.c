
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct proc {int p_flag; struct proc* p_pptr; int p_pid; } ;
struct cdev {int dummy; } ;
struct TYPE_3__ {int dofhp_gen; int dofhp_pid; int dofhp_dof; } ;
typedef TYPE_1__ dof_helper_t ;
typedef int dof_hdr_t ;
typedef scalar_t__ caddr_t ;




 int EINVAL ;
 int ENOTTY ;
 int PRELE (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_SHOULDSTOP (struct proc*) ;
 int P_TRACED ;
 int P_WEXIT ;
 int _PHOLD (struct proc*) ;
 struct proc* curproc ;
 int * dtrace_dof_copyin (uintptr_t,int*) ;
 int * dtrace_dof_copyin_proc (struct proc*,uintptr_t,int*) ;
 int dtrace_helper_destroygen (int *,int) ;
 int dtrace_helper_slurp (int *,TYPE_1__*,struct proc*) ;
 int dtrace_lock ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 struct proc* pfind (int ) ;

__attribute__((used)) static int
dtrace_ioctl_helper(struct cdev *dev, u_long cmd, caddr_t addr, int flags,
    struct thread *td)
{
 struct proc *p;
 dof_helper_t *dhp;
 dof_hdr_t *dof;
 int rval;

 dhp = ((void*)0);
 dof = ((void*)0);
 rval = 0;
 switch (cmd) {
 case 129:
  dhp = (dof_helper_t *)addr;
  addr = (caddr_t)(uintptr_t)dhp->dofhp_dof;
  p = curproc;
  if (p->p_pid == dhp->dofhp_pid) {
   dof = dtrace_dof_copyin((uintptr_t)addr, &rval);
  } else {
   p = pfind(dhp->dofhp_pid);
   if (p == ((void*)0))
    return (EINVAL);
   if (!P_SHOULDSTOP(p) ||
       (p->p_flag & (P_TRACED | P_WEXIT)) != P_TRACED ||
       p->p_pptr != curproc) {
    PROC_UNLOCK(p);
    return (EINVAL);
   }
   _PHOLD(p);
   PROC_UNLOCK(p);
   dof = dtrace_dof_copyin_proc(p, (uintptr_t)addr, &rval);
  }

  if (dof == ((void*)0)) {
   if (p != curproc)
    PRELE(p);
   break;
  }

  mutex_enter(&dtrace_lock);
  if ((rval = dtrace_helper_slurp(dof, dhp, p)) != -1) {
   dhp->dofhp_gen = rval;
   rval = 0;
  } else {
   rval = EINVAL;
  }
  mutex_exit(&dtrace_lock);
  if (p != curproc)
   PRELE(p);
  break;
 case 128:
  mutex_enter(&dtrace_lock);
  rval = dtrace_helper_destroygen(((void*)0), *(int *)(uintptr_t)addr);
  mutex_exit(&dtrace_lock);
  break;
 default:
  rval = ENOTTY;
  break;
 }
 return (rval);
}
