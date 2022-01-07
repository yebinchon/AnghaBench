
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct proc* td_proc; } ;
struct proc_ldt {int dummy; } ;
struct mdproc {int md_ldt_sd; struct proc_ldt* md_ldt; } ;
struct proc {struct mdproc p_md; } ;


 int GNULL_SEL ;
 int GSEL (int ,int ) ;
 int SEL_KPL ;
 int atomic_thread_fence_rel () ;
 int bzero (int *,int) ;
 int critical_enter () ;
 int critical_exit () ;
 struct thread* curthread ;
 int dt_lock ;
 int lldt (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int user_ldt_deref (struct proc_ldt*) ;

void
user_ldt_free(struct thread *td)
{
 struct proc *p = td->td_proc;
 struct mdproc *mdp = &p->p_md;
 struct proc_ldt *pldt;

 mtx_lock(&dt_lock);
 if ((pldt = mdp->md_ldt) == ((void*)0)) {
  mtx_unlock(&dt_lock);
  return;
 }

 critical_enter();
 mdp->md_ldt = ((void*)0);
 atomic_thread_fence_rel();
 bzero(&mdp->md_ldt_sd, sizeof(mdp->md_ldt_sd));
 if (td == curthread)
  lldt(GSEL(GNULL_SEL, SEL_KPL));
 critical_exit();
 user_ldt_deref(pldt);
}
