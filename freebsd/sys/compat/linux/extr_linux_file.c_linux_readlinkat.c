
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_readlinkat_args {int dfd; int bufsiz; int buf; int path; } ;


 int AT_FDCWD ;
 int LCONVPATHEXIST_AT (struct thread*,int ,char**,int) ;
 int LFREEPATH (char*) ;
 int LINUX_AT_FDCWD ;
 int UIO_SYSSPACE ;
 int UIO_USERSPACE ;
 int kern_readlinkat (struct thread*,int,char*,int ,int ,int ,int ) ;

int
linux_readlinkat(struct thread *td, struct linux_readlinkat_args *args)
{
 char *name;
 int error, dfd;

 dfd = (args->dfd == LINUX_AT_FDCWD) ? AT_FDCWD : args->dfd;
 LCONVPATHEXIST_AT(td, args->path, &name, dfd);

 error = kern_readlinkat(td, dfd, name, UIO_SYSSPACE, args->buf,
     UIO_USERSPACE, args->bufsiz);
 LFREEPATH(name);
 return (error);
}
