
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ts32 ;
struct timespec32 {int dummy; } ;
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct freebsd32_utimensat_args {int flag; int path; int fd; int * times; } ;


 int CP (struct timespec32,struct timespec,int ) ;
 int UIO_SYSSPACE ;
 int UIO_USERSPACE ;
 int copyin (int *,struct timespec32*,int) ;
 int kern_utimensat (struct thread*,int ,int ,int ,struct timespec*,int ,int ) ;
 int tv_nsec ;
 int tv_sec ;

int
freebsd32_utimensat(struct thread *td, struct freebsd32_utimensat_args *uap)
{
 struct timespec32 ts32[2];
 struct timespec ts[2], *tsp;
 int error;

 if (uap->times != ((void*)0)) {
  error = copyin(uap->times, ts32, sizeof(ts32));
  if (error)
   return (error);
  CP(ts32[0], ts[0], tv_sec);
  CP(ts32[0], ts[0], tv_nsec);
  CP(ts32[1], ts[1], tv_sec);
  CP(ts32[1], ts[1], tv_nsec);
  tsp = ts;
 } else
  tsp = ((void*)0);
 return (kern_utimensat(td, uap->fd, uap->path, UIO_USERSPACE,
     tsp, UIO_SYSSPACE, uap->flag));
}
