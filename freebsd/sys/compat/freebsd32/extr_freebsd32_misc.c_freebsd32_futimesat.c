
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval32 {int dummy; } ;
struct timeval {int dummy; } ;
struct thread {int dummy; } ;
struct freebsd32_futimesat_args {int path; int fd; int * times; } ;
typedef int s32 ;


 int CP (struct timeval32,struct timeval,int ) ;
 int UIO_SYSSPACE ;
 int UIO_USERSPACE ;
 int copyin (int *,struct timeval32*,int) ;
 int kern_utimesat (struct thread*,int ,int ,int ,struct timeval*,int ) ;
 int tv_sec ;
 int tv_usec ;

int
freebsd32_futimesat(struct thread *td, struct freebsd32_futimesat_args *uap)
{
 struct timeval32 s32[2];
 struct timeval s[2], *sp;
 int error;

 if (uap->times != ((void*)0)) {
  error = copyin(uap->times, s32, sizeof(s32));
  if (error)
   return (error);
  CP(s32[0], s[0], tv_sec);
  CP(s32[0], s[0], tv_usec);
  CP(s32[1], s[1], tv_sec);
  CP(s32[1], s[1], tv_usec);
  sp = s;
 } else
  sp = ((void*)0);
 return (kern_utimesat(td, uap->fd, uap->path, UIO_USERSPACE,
  sp, UIO_SYSSPACE));
}
