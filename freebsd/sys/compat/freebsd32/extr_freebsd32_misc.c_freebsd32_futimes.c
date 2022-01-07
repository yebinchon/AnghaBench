
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval32 {int dummy; } ;
struct timeval {int dummy; } ;
struct thread {int dummy; } ;
struct freebsd32_futimes_args {int fd; int * tptr; } ;
typedef int s32 ;


 int CP (struct timeval32,struct timeval,int ) ;
 int UIO_SYSSPACE ;
 int copyin (int *,struct timeval32*,int) ;
 int kern_futimes (struct thread*,int ,struct timeval*,int ) ;
 int tv_sec ;
 int tv_usec ;

int
freebsd32_futimes(struct thread *td, struct freebsd32_futimes_args *uap)
{
 struct timeval32 s32[2];
 struct timeval s[2], *sp;
 int error;

 if (uap->tptr != ((void*)0)) {
  error = copyin(uap->tptr, s32, sizeof(s32));
  if (error)
   return (error);
  CP(s32[0], s[0], tv_sec);
  CP(s32[0], s[0], tv_usec);
  CP(s32[1], s[1], tv_sec);
  CP(s32[1], s[1], tv_usec);
  sp = s;
 } else
  sp = ((void*)0);
 return (kern_futimes(td, uap->fd, sp, UIO_SYSSPACE));
}
