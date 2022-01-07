
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ts32 ;
struct timespec32 {int dummy; } ;
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct freebsd32_sched_rr_get_interval_args {int interval; int pid; } ;


 int CP (struct timespec,struct timespec32,int ) ;
 int copyout (struct timespec32*,int ,int) ;
 int kern_sched_rr_get_interval (struct thread*,int ,struct timespec*) ;
 int tv_nsec ;
 int tv_sec ;

int
freebsd32_sched_rr_get_interval(struct thread *td,
    struct freebsd32_sched_rr_get_interval_args *uap)
{
 struct timespec ts;
 struct timespec32 ts32;
 int error;

 error = kern_sched_rr_get_interval(td, uap->pid, &ts);
 if (error == 0) {
  CP(ts, ts32, tv_sec);
  CP(ts, ts32, tv_nsec);
  error = copyout(&ts32, uap->interval, sizeof(ts32));
 }
 return (error);
}
