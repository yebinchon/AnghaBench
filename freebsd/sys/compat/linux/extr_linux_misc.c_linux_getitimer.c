
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_getitimer_args {int itv; int which; } ;
struct l_itimerval {int dummy; } ;
struct itimerval {int dummy; } ;
typedef int ls ;


 int B2L_ITIMERVAL (struct l_itimerval*,struct itimerval*) ;
 int copyout (struct l_itimerval*,int ,int) ;
 int kern_getitimer (struct thread*,int ,struct itimerval*) ;

int
linux_getitimer(struct thread *td, struct linux_getitimer_args *uap)
{
 int error;
 struct l_itimerval ls;
 struct itimerval aitv;

 error = kern_getitimer(td, uap->which, &aitv);
 if (error != 0)
  return (error);
 B2L_ITIMERVAL(&ls, &aitv);
 return (copyout(&ls, uap->itv, sizeof(ls)));
}
