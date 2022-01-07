
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ts32 ;
struct timeval {int dummy; } ;
struct timespec32 {int dummy; } ;
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct freebsd32_pselect_args {int ex; int ou; int in; int nd; int * sm; int * ts; } ;
typedef struct timespec32 sigset_t ;
typedef int set ;
typedef int int32_t ;


 int CP (struct timespec32,struct timespec,int ) ;
 int TIMESPEC_TO_TIMEVAL (struct timeval*,struct timespec*) ;
 int copyin (int *,struct timespec32*,int) ;
 int kern_pselect (struct thread*,int ,int ,int ,int ,struct timeval*,struct timespec32*,int) ;
 int tv_nsec ;
 int tv_sec ;

int
freebsd32_pselect(struct thread *td, struct freebsd32_pselect_args *uap)
{
 struct timespec32 ts32;
 struct timespec ts;
 struct timeval tv, *tvp;
 sigset_t set, *uset;
 int error;

 if (uap->ts != ((void*)0)) {
  error = copyin(uap->ts, &ts32, sizeof(ts32));
  if (error != 0)
   return (error);
  CP(ts32, ts, tv_sec);
  CP(ts32, ts, tv_nsec);
  TIMESPEC_TO_TIMEVAL(&tv, &ts);
  tvp = &tv;
 } else
  tvp = ((void*)0);
 if (uap->sm != ((void*)0)) {
  error = copyin(uap->sm, &set, sizeof(set));
  if (error != 0)
   return (error);
  uset = &set;
 } else
  uset = ((void*)0);



 error = kern_pselect(td, uap->nd, uap->in, uap->ou, uap->ex, tvp,
     uset, sizeof(int32_t) * 8);
 return (error);
}
