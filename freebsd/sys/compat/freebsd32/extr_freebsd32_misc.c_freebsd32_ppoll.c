
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ts32 ;
struct timespec32 {int dummy; } ;
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct freebsd32_ppoll_args {int nfds; int fds; int * set; int * ts; } ;
typedef struct timespec32 sigset_t ;
typedef int set ;


 int CP (struct timespec32,struct timespec,int ) ;
 int copyin (int *,struct timespec32*,int) ;
 int kern_poll (struct thread*,int ,int ,struct timespec*,struct timespec32*) ;
 int tv_nsec ;
 int tv_sec ;

int
freebsd32_ppoll(struct thread *td, struct freebsd32_ppoll_args *uap)
{
 struct timespec32 ts32;
 struct timespec ts, *tsp;
 sigset_t set, *ssp;
 int error;

 if (uap->ts != ((void*)0)) {
  error = copyin(uap->ts, &ts32, sizeof(ts32));
  if (error != 0)
   return (error);
  CP(ts32, ts, tv_sec);
  CP(ts32, ts, tv_nsec);
  tsp = &ts;
 } else
  tsp = ((void*)0);
 if (uap->set != ((void*)0)) {
  error = copyin(uap->set, &set, sizeof(set));
  if (error != 0)
   return (error);
  ssp = &set;
 } else
  ssp = ((void*)0);

 return (kern_poll(td, uap->fds, uap->nfds, tsp, ssp));
}
