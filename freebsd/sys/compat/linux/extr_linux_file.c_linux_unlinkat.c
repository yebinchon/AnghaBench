
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct stat {int st_mode; } ;
struct linux_unlinkat_args {int flag; int dfd; int pathname; } ;


 int AT_FDCWD ;
 int AT_SYMLINK_NOFOLLOW ;
 int EINVAL ;
 int EISDIR ;
 int EPERM ;
 int FD_NONE ;
 int LCONVPATHEXIST_AT (struct thread*,int ,char**,int) ;
 int LFREEPATH (char*) ;
 int LINUX_AT_FDCWD ;
 int LINUX_AT_REMOVEDIR ;
 scalar_t__ S_ISDIR (int ) ;
 int UIO_SYSSPACE ;
 int kern_frmdirat (struct thread*,int,char*,int ,int ,int ) ;
 int kern_funlinkat (struct thread*,int,char*,int ,int ,int ,int ) ;
 scalar_t__ kern_statat (struct thread*,int ,int,char*,int ,struct stat*,int *) ;

int
linux_unlinkat(struct thread *td, struct linux_unlinkat_args *args)
{
 char *path;
 int error, dfd;
 struct stat st;

 if (args->flag & ~LINUX_AT_REMOVEDIR)
  return (EINVAL);

 dfd = (args->dfd == LINUX_AT_FDCWD) ? AT_FDCWD : args->dfd;
 LCONVPATHEXIST_AT(td, args->pathname, &path, dfd);

 if (args->flag & LINUX_AT_REMOVEDIR)
  error = kern_frmdirat(td, dfd, path, FD_NONE, UIO_SYSSPACE, 0);
 else
  error = kern_funlinkat(td, dfd, path, FD_NONE, UIO_SYSSPACE, 0,
      0);
 if (error == EPERM && !(args->flag & LINUX_AT_REMOVEDIR)) {

  if (kern_statat(td, AT_SYMLINK_NOFOLLOW, dfd, path,
      UIO_SYSSPACE, &st, ((void*)0)) == 0 && S_ISDIR(st.st_mode))
   error = EISDIR;
 }
 LFREEPATH(path);
 return (error);
}
