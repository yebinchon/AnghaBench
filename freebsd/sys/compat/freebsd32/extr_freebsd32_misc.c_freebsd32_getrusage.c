
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct rusage32 {int dummy; } ;
struct rusage {int dummy; } ;
struct freebsd32_getrusage_args {int rusage; int who; } ;
typedef int s32 ;


 int copyout (struct rusage32*,int ,int) ;
 int freebsd32_rusage_out (struct rusage*,struct rusage32*) ;
 int kern_getrusage (struct thread*,int ,struct rusage*) ;

int
freebsd32_getrusage(struct thread *td, struct freebsd32_getrusage_args *uap)
{
 struct rusage32 s32;
 struct rusage s;
 int error;

 error = kern_getrusage(td, uap->who, &s);
 if (error == 0) {
  freebsd32_rusage_out(&s, &s32);
  error = copyout(&s32, uap->rusage, sizeof(s32));
 }
 return (error);
}
