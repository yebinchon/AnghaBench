
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct freebsd32_sendfile_args {int dummy; } ;


 int freebsd32_do_sendfile (struct thread*,struct freebsd32_sendfile_args*,int ) ;

int
freebsd32_sendfile(struct thread *td, struct freebsd32_sendfile_args *uap)
{

 return (freebsd32_do_sendfile(td, uap, 0));
}
