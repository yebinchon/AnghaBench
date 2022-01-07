
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct rusage {int dummy; } ;
struct linux_getrusage_args {int * rusage; int who; } ;


 int kern_getrusage (struct thread*,int ,struct rusage*) ;
 int linux_copyout_rusage (struct rusage*,int *) ;

int
linux_getrusage(struct thread *td, struct linux_getrusage_args *uap)
{
 struct rusage s;
 int error;

 error = kern_getrusage(td, uap->who, &s);
 if (error != 0)
  return (error);
 if (uap->rusage != ((void*)0))
  error = linux_copyout_rusage(&s, uap->rusage);
 return (error);
}
