
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_symlinkat_args {int newdfd; int newname; int oldname; } ;


 int AT_FDCWD ;
 int LCONVPATHEXIST (struct thread*,int ,char**) ;
 int LFREEPATH (char*) ;
 int LINUX_AT_FDCWD ;
 int UIO_SYSSPACE ;
 int UIO_USERSPACE ;
 int kern_symlinkat (struct thread*,char*,int,char*,int ) ;
 int linux_emul_convpath (struct thread*,int ,int ,char**,int,int) ;

int
linux_symlinkat(struct thread *td, struct linux_symlinkat_args *args)
{
 char *path, *to;
 int error, dfd;

 dfd = (args->newdfd == LINUX_AT_FDCWD) ? AT_FDCWD : args->newdfd;
 LCONVPATHEXIST(td, args->oldname, &path);

 error = linux_emul_convpath(td, args->newname, UIO_USERSPACE, &to, 1, dfd);
 if (to == ((void*)0)) {
  LFREEPATH(path);
  return (error);
 }

 error = kern_symlinkat(td, path, dfd, to, UIO_SYSSPACE);
 LFREEPATH(path);
 LFREEPATH(to);
 return (error);
}
