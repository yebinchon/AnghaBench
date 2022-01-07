
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ts32 ;
struct timespec32 {int dummy; } ;
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct freebsd32_clock_getres_args {int * tp; int clock_id; } ;


 int CP (struct timespec,struct timespec32,int ) ;
 int copyout (struct timespec32*,int *,int) ;
 int kern_clock_getres (struct thread*,int ,struct timespec*) ;
 int tv_nsec ;
 int tv_sec ;

int
freebsd32_clock_getres(struct thread *td,
         struct freebsd32_clock_getres_args *uap)
{
 struct timespec ts;
 struct timespec32 ts32;
 int error;

 if (uap->tp == ((void*)0))
  return (0);
 error = kern_clock_getres(td, uap->clock_id, &ts);
 if (error == 0) {
  CP(ts, ts32, tv_sec);
  CP(ts, ts32, tv_nsec);
  error = copyout(&ts32, uap->tp, sizeof(ts32));
 }
 return (error);
}
