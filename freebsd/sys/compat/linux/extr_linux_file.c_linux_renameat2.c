
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_renameat2_args {int flags; int olddfd; int newdfd; int newname; int oldname; } ;


 int AT_FDCWD ;
 int EINVAL ;
 int LCONVPATHEXIST_AT (struct thread*,int ,char**,int) ;
 int LFREEPATH (char*) ;
 int LINUX_AT_FDCWD ;
 int LINUX_RENAME_EXCHANGE ;
 int LINUX_RENAME_NOREPLACE ;
 int LINUX_RENAME_WHITEOUT ;
 int UIO_SYSSPACE ;
 int UIO_USERSPACE ;
 int kern_renameat (struct thread*,int,char*,int,char*,int ) ;
 int linux_emul_convpath (struct thread*,int ,int ,char**,int,int) ;
 int linux_msg (struct thread*,char*,int) ;

int
linux_renameat2(struct thread *td, struct linux_renameat2_args *args)
{
 char *from, *to;
 int error, olddfd, newdfd;

 if (args->flags != 0) {
  if (args->flags & ~(LINUX_RENAME_EXCHANGE |
      LINUX_RENAME_NOREPLACE | LINUX_RENAME_WHITEOUT))
   return (EINVAL);
  if (args->flags & LINUX_RENAME_EXCHANGE &&
      args->flags & (LINUX_RENAME_NOREPLACE |
      LINUX_RENAME_WHITEOUT))
   return (EINVAL);
  linux_msg(td, "renameat2 unsupported flags 0x%x",
      args->flags);
  return (EINVAL);
 }

 olddfd = (args->olddfd == LINUX_AT_FDCWD) ? AT_FDCWD : args->olddfd;
 newdfd = (args->newdfd == LINUX_AT_FDCWD) ? AT_FDCWD : args->newdfd;
 LCONVPATHEXIST_AT(td, args->oldname, &from, olddfd);

 error = linux_emul_convpath(td, args->newname, UIO_USERSPACE, &to, 1, newdfd);
 if (to == ((void*)0)) {
  LFREEPATH(from);
  return (error);
 }

 error = kern_renameat(td, olddfd, from, newdfd, to, UIO_SYSSPACE);
 LFREEPATH(from);
 LFREEPATH(to);
 return (error);
}
