
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val32 ;
struct thread {int dummy; } ;
struct itimerspec32 {int dummy; } ;
struct itimerspec {int dummy; } ;
struct freebsd32_ktimer_gettime_args {int value; int timerid; } ;


 int ITS_CP (struct itimerspec,struct itimerspec32) ;
 int copyout (struct itimerspec32*,int ,int) ;
 int kern_ktimer_gettime (struct thread*,int ,struct itimerspec*) ;

int
freebsd32_ktimer_gettime(struct thread *td,
    struct freebsd32_ktimer_gettime_args *uap)
{
 struct itimerspec32 val32;
 struct itimerspec val;
 int error;

 error = kern_ktimer_gettime(td, uap->timerid, &val);
 if (error == 0) {
  ITS_CP(val, val32);
  error = copyout(&val32, uap->value, sizeof(val32));
 }
 return (error);
}
