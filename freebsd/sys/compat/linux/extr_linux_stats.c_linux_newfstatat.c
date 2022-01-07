
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct stat {int dummy; } ;
struct linux_newfstatat_args {int flag; int dfd; int statbuf; int pathname; } ;


 int AT_FDCWD ;
 int AT_SYMLINK_NOFOLLOW ;
 int EINVAL ;
 int LCONVPATHEXIST_AT (struct thread*,int ,char**,int) ;
 int LFREEPATH (char*) ;
 int LINUX_AT_FDCWD ;
 int LINUX_AT_SYMLINK_NOFOLLOW ;
 int UIO_SYSSPACE ;
 int linux_kern_statat (struct thread*,int,int,char*,int ,struct stat*) ;
 int newstat_copyout (struct stat*,int ) ;

int
linux_newfstatat(struct thread *td, struct linux_newfstatat_args *args)
{
 char *path;
 int error, dfd, flag;
 struct stat buf;

 if (args->flag & ~LINUX_AT_SYMLINK_NOFOLLOW)
  return (EINVAL);
 flag = (args->flag & LINUX_AT_SYMLINK_NOFOLLOW) ?
     AT_SYMLINK_NOFOLLOW : 0;

 dfd = (args->dfd == LINUX_AT_FDCWD) ? AT_FDCWD : args->dfd;
 LCONVPATHEXIST_AT(td, args->pathname, &path, dfd);

 error = linux_kern_statat(td, flag, dfd, path, UIO_SYSSPACE, &buf);
 if (error == 0)
  error = newstat_copyout(&buf, args->statbuf);
 LFREEPATH(path);

 return (error);
}
