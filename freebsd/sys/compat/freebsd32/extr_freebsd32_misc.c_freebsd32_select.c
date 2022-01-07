
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tv32 ;
struct timeval32 {int dummy; } ;
struct timeval {int dummy; } ;
struct thread {int dummy; } ;
struct freebsd32_select_args {int ex; int ou; int in; int nd; int * tv; } ;
typedef int int32_t ;


 int CP (struct timeval32,struct timeval,int ) ;
 int copyin (int *,struct timeval32*,int) ;
 int kern_select (struct thread*,int ,int ,int ,int ,struct timeval*,int) ;
 int tv_sec ;
 int tv_usec ;

int
freebsd32_select(struct thread *td, struct freebsd32_select_args *uap)
{
 struct timeval32 tv32;
 struct timeval tv, *tvp;
 int error;

 if (uap->tv != ((void*)0)) {
  error = copyin(uap->tv, &tv32, sizeof(tv32));
  if (error)
   return (error);
  CP(tv32, tv, tv_sec);
  CP(tv32, tv, tv_usec);
  tvp = &tv;
 } else
  tvp = ((void*)0);



 return (kern_select(td, uap->nd, uap->in, uap->ou, uap->ex, tvp,
     sizeof(int32_t) * 8));
}
