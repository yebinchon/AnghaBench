
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec32 {int dummy; } ;
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct freebsd32_clock_settime_args {int clock_id; int tp; } ;
typedef int ats32 ;


 int CP (struct timespec32,struct timespec,int ) ;
 int copyin (int ,struct timespec32*,int) ;
 int kern_clock_settime (struct thread*,int ,struct timespec*) ;
 int tv_nsec ;
 int tv_sec ;

int
freebsd32_clock_settime(struct thread *td,
   struct freebsd32_clock_settime_args *uap)
{
 struct timespec ats;
 struct timespec32 ats32;
 int error;

 error = copyin(uap->tp, &ats32, sizeof(ats32));
 if (error)
  return (error);
 CP(ats32, ats, tv_sec);
 CP(ats32, ats, tv_nsec);

 return (kern_clock_settime(td, uap->clock_id, &ats));
}
