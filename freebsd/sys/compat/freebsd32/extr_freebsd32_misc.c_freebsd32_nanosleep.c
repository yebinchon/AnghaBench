
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct freebsd32_nanosleep_args {int rmtp; int rqtp; } ;


 int CLOCK_REALTIME ;
 int TIMER_RELTIME ;
 int freebsd32_user_clock_nanosleep (struct thread*,int ,int ,int ,int ) ;

int
freebsd32_nanosleep(struct thread *td, struct freebsd32_nanosleep_args *uap)
{

 return (freebsd32_user_clock_nanosleep(td, CLOCK_REALTIME,
     TIMER_RELTIME, uap->rqtp, uap->rmtp));
}
