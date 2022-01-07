
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmspace {int dummy; } ;
struct thread {int dummy; } ;
struct image_args {int dummy; } ;
struct freebsd32_execve_args {int envv; int argv; int fname; } ;


 int UIO_USERSPACE ;
 int freebsd32_exec_copyin_args (struct image_args*,int ,int ,int ,int ) ;
 int kern_execve (struct thread*,struct image_args*,int *) ;
 int post_execve (struct thread*,int,struct vmspace*) ;
 int pre_execve (struct thread*,struct vmspace**) ;

int
freebsd32_execve(struct thread *td, struct freebsd32_execve_args *uap)
{
 struct image_args eargs;
 struct vmspace *oldvmspace;
 int error;

 error = pre_execve(td, &oldvmspace);
 if (error != 0)
  return (error);
 error = freebsd32_exec_copyin_args(&eargs, uap->fname, UIO_USERSPACE,
     uap->argv, uap->envv);
 if (error == 0)
  error = kern_execve(td, &eargs, ((void*)0));
 post_execve(td, error, oldvmspace);
 return (error);
}
