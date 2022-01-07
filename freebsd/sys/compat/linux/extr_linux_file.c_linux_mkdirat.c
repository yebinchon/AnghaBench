
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_mkdirat_args {int dfd; int mode; int pathname; } ;


 int AT_FDCWD ;
 int LCONVPATHCREAT_AT (struct thread*,int ,char**,int) ;
 int LFREEPATH (char*) ;
 int LINUX_AT_FDCWD ;
 int UIO_SYSSPACE ;
 int kern_mkdirat (struct thread*,int,char*,int ,int ) ;

int
linux_mkdirat(struct thread *td, struct linux_mkdirat_args *args)
{
 char *path;
 int error, dfd;

 dfd = (args->dfd == LINUX_AT_FDCWD) ? AT_FDCWD : args->dfd;
 LCONVPATHCREAT_AT(td, args->pathname, &path, dfd);

 error = kern_mkdirat(td, dfd, path, UIO_SYSSPACE, args->mode);
 LFREEPATH(path);
 return (error);
}
