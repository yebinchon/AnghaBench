
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_linkat_args {int flag; int olddfd; int newdfd; int newname; int oldname; } ;


 int AT_FDCWD ;
 int EINVAL ;
 int FOLLOW ;
 int LCONVPATHEXIST_AT (struct thread*,int ,char**,int) ;
 int LFREEPATH (char*) ;
 int LINUX_AT_FDCWD ;
 int LINUX_AT_SYMLINK_FOLLOW ;
 int NOFOLLOW ;
 int UIO_SYSSPACE ;
 int UIO_USERSPACE ;
 int kern_linkat (struct thread*,int,int,char*,char*,int ,int) ;
 int linux_emul_convpath (struct thread*,int ,int ,char**,int,int) ;

int
linux_linkat(struct thread *td, struct linux_linkat_args *args)
{
 char *path, *to;
 int error, olddfd, newdfd, follow;

 if (args->flag & ~LINUX_AT_SYMLINK_FOLLOW)
  return (EINVAL);

 olddfd = (args->olddfd == LINUX_AT_FDCWD) ? AT_FDCWD : args->olddfd;
 newdfd = (args->newdfd == LINUX_AT_FDCWD) ? AT_FDCWD : args->newdfd;
 LCONVPATHEXIST_AT(td, args->oldname, &path, olddfd);

 error = linux_emul_convpath(td, args->newname, UIO_USERSPACE, &to, 1, newdfd);
 if (to == ((void*)0)) {
  LFREEPATH(path);
  return (error);
 }

 follow = (args->flag & LINUX_AT_SYMLINK_FOLLOW) == 0 ? NOFOLLOW :
     FOLLOW;
 error = kern_linkat(td, olddfd, newdfd, path, to, UIO_SYSSPACE, follow);
 LFREEPATH(path);
 LFREEPATH(to);
 return (error);
}
