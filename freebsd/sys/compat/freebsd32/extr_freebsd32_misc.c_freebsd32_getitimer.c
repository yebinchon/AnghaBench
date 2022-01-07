
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct itimerval32 {int dummy; } ;
struct itimerval {int dummy; } ;
struct freebsd32_getitimer_args {int * itv; int which; } ;
typedef int i32 ;


 int TV_CP (struct itimerval,struct itimerval32,int ) ;
 int copyout (struct itimerval32*,int *,int) ;
 int it_interval ;
 int it_value ;
 int kern_getitimer (struct thread*,int ,struct itimerval*) ;

int
freebsd32_getitimer(struct thread *td, struct freebsd32_getitimer_args *uap)
{
 struct itimerval itv;
 struct itimerval32 i32;
 int error;

 error = kern_getitimer(td, uap->which, &itv);
 if (error || uap->itv == ((void*)0))
  return (error);
 TV_CP(itv, i32, it_interval);
 TV_CP(itv, i32, it_value);
 return (copyout(&i32, uap->itv, sizeof(i32)));
}
