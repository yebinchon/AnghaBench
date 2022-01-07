
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ts32 ;
struct timespec32 {int dummy; } ;
struct timespec {int dummy; } ;
struct thread {int * td_retval; } ;
struct kevent_copyops {int k_copyin; int k_copyout; struct freebsd32_kevent_args* arg; } ;
struct kevent32 {int dummy; } ;
struct freebsd32_kevent_args {int nevents; int nchanges; int fd; struct kevent32* changelist; scalar_t__ timeout; struct kevent32* eventlist; } ;


 int CP (struct timespec32,struct timespec,int ) ;
 scalar_t__ KTRPOINT (struct thread*,int ) ;
 int KTR_STRUCT_ARRAY ;
 int UIO_USERSPACE ;
 int copyin (scalar_t__,struct timespec32*,int) ;
 int freebsd32_kevent_copyin ;
 int freebsd32_kevent_copyout ;
 int kern_kevent (struct thread*,int ,int ,int ,struct kevent_copyops*,struct timespec*) ;
 int ktrstructarray (char*,int ,struct kevent32*,int ,int) ;
 int tv_nsec ;
 int tv_sec ;

int
freebsd32_kevent(struct thread *td, struct freebsd32_kevent_args *uap)
{
 struct timespec32 ts32;
 struct timespec ts, *tsp;
 struct kevent_copyops k_ops = {
  .arg = uap,
  .k_copyout = freebsd32_kevent_copyout,
  .k_copyin = freebsd32_kevent_copyin,
 };



 int error;

 if (uap->timeout) {
  error = copyin(uap->timeout, &ts32, sizeof(ts32));
  if (error)
   return (error);
  CP(ts32, ts, tv_sec);
  CP(ts32, ts, tv_nsec);
  tsp = &ts;
 } else
  tsp = ((void*)0);





 error = kern_kevent(td, uap->fd, uap->nchanges, uap->nevents,
     &k_ops, tsp);





 return (error);
}
