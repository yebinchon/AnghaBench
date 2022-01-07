
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_timer_gettime_args {int setting; int timerid; } ;
struct l_itimerspec {int dummy; } ;
struct itimerspec {int dummy; } ;
typedef int l_val ;


 int ITS_CP (struct itimerspec,struct l_itimerspec) ;
 int copyout (struct l_itimerspec*,int ,int) ;
 int kern_ktimer_gettime (struct thread*,int ,struct itimerspec*) ;

int
linux_timer_gettime(struct thread *td, struct linux_timer_gettime_args *uap)
{
 struct l_itimerspec l_val;
 struct itimerspec val;
 int error;

 error = kern_ktimer_gettime(td, uap->timerid, &val);
 if (error == 0) {
  ITS_CP(val, l_val);
  error = copyout(&l_val, uap->setting, sizeof(l_val));
 }
 return (error);
}
