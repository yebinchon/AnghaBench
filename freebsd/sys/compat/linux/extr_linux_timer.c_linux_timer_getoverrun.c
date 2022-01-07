
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_timer_getoverrun_args {int timerid; } ;


 int kern_ktimer_getoverrun (struct thread*,int ) ;

int
linux_timer_getoverrun(struct thread *td, struct linux_timer_getoverrun_args *uap)
{

 return (kern_ktimer_getoverrun(td, uap->timerid));
}
