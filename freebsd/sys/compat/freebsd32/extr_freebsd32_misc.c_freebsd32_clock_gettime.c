
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec32 {int dummy; } ;
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct freebsd32_clock_gettime_args {int tp; int clock_id; } ;
typedef int ats32 ;


 int CP (struct timespec,struct timespec32,int ) ;
 int copyout (struct timespec32*,int ,int) ;
 int kern_clock_gettime (struct thread*,int ,struct timespec*) ;
 int tv_nsec ;
 int tv_sec ;

int
freebsd32_clock_gettime(struct thread *td,
   struct freebsd32_clock_gettime_args *uap)
{
 struct timespec ats;
 struct timespec32 ats32;
 int error;

 error = kern_clock_gettime(td, uap->clock_id, &ats);
 if (error == 0) {
  CP(ats, ats32, tv_sec);
  CP(ats, ats32, tv_nsec);
  error = copyout(&ats32, uap->tp, sizeof(ats32));
 }
 return (error);
}
