
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec32 {int tv_nsec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;
struct thread {int dummy; } ;
struct freebsd32_thr_suspend_args {int * timeout; } ;


 int copyin (void const*,void*,int) ;
 int kern_thr_suspend (struct thread*,struct timespec*) ;

int
freebsd32_thr_suspend(struct thread *td, struct freebsd32_thr_suspend_args *uap)
{
 struct timespec32 ts32;
 struct timespec ts, *tsp;
 int error;

 error = 0;
 tsp = ((void*)0);
 if (uap->timeout != ((void*)0)) {
  error = copyin((const void *)uap->timeout, (void *)&ts32,
      sizeof(struct timespec32));
  if (error != 0)
   return (error);
  ts.tv_sec = ts32.tv_sec;
  ts.tv_nsec = ts32.tv_nsec;
  tsp = &ts;
 }
 return (kern_thr_suspend(td, tsp));
}
