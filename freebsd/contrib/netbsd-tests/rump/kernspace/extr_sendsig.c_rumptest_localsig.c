
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_lock; } ;


 struct proc* curproc ;
 int mutex_enter (int ) ;
 int mutex_exit (int ) ;
 int psignal (struct proc*,int) ;

void
rumptest_localsig(int signo)
{
 struct proc *p = curproc;

 mutex_enter(p->p_lock);
 psignal(p, signo);
 mutex_exit(p->p_lock);
}
