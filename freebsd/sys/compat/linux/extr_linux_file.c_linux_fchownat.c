
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_fchownat_args {int flag; int dfd; int gid; int uid; int filename; } ;


 int AT_FDCWD ;
 int AT_SYMLINK_NOFOLLOW ;
 int EINVAL ;
 int LCONVPATHEXIST_AT (struct thread*,int ,char**,int) ;
 int LFREEPATH (char*) ;
 int LINUX_AT_FDCWD ;
 int LINUX_AT_SYMLINK_NOFOLLOW ;
 int UIO_SYSSPACE ;
 int kern_fchownat (struct thread*,int,char*,int ,int ,int ,int) ;

int
linux_fchownat(struct thread *td, struct linux_fchownat_args *args)
{
 char *path;
 int error, dfd, flag;

 if (args->flag & ~LINUX_AT_SYMLINK_NOFOLLOW)
  return (EINVAL);

 dfd = (args->dfd == LINUX_AT_FDCWD) ? AT_FDCWD : args->dfd;
 LCONVPATHEXIST_AT(td, args->filename, &path, dfd);

 flag = (args->flag & LINUX_AT_SYMLINK_NOFOLLOW) == 0 ? 0 :
     AT_SYMLINK_NOFOLLOW;
 error = kern_fchownat(td, dfd, path, UIO_SYSSPACE, args->uid, args->gid,
     flag);
 LFREEPATH(path);
 return (error);
}
