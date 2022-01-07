
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_faccessat_args {int amode; int dfd; int filename; } ;


 int AT_FDCWD ;
 int EINVAL ;
 int F_OK ;
 int LCONVPATHEXIST_AT (struct thread*,int ,char**,int) ;
 int LFREEPATH (char*) ;
 int LINUX_AT_FDCWD ;
 int R_OK ;
 int UIO_SYSSPACE ;
 int W_OK ;
 int X_OK ;
 int kern_accessat (struct thread*,int,char*,int ,int ,int) ;

int
linux_faccessat(struct thread *td, struct linux_faccessat_args *args)
{
 char *path;
 int error, dfd;


 if (args->amode & ~(F_OK | X_OK | W_OK | R_OK))
  return (EINVAL);

 dfd = (args->dfd == LINUX_AT_FDCWD) ? AT_FDCWD : args->dfd;
 LCONVPATHEXIST_AT(td, args->filename, &path, dfd);

 error = kern_accessat(td, dfd, path, UIO_SYSSPACE, 0, args->amode);
 LFREEPATH(path);

 return (error);
}
