
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_fchmodat_args {int dfd; int mode; int filename; } ;


 int AT_FDCWD ;
 int LCONVPATHEXIST_AT (struct thread*,int ,char**,int) ;
 int LFREEPATH (char*) ;
 int LINUX_AT_FDCWD ;
 int UIO_SYSSPACE ;
 int kern_fchmodat (struct thread*,int,char*,int ,int ,int ) ;

int
linux_fchmodat(struct thread *td, struct linux_fchmodat_args *args)
{
 char *path;
 int error, dfd;

 dfd = (args->dfd == LINUX_AT_FDCWD) ? AT_FDCWD : args->dfd;
 LCONVPATHEXIST_AT(td, args->filename, &path, dfd);

 error = kern_fchmodat(td, dfd, path, UIO_SYSSPACE, args->mode, 0);
 LFREEPATH(path);
 return (error);
}
