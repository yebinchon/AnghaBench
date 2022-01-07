
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct cloudabi_sys_fd_stat_put_args {scalar_t__ flags; int fd; int buf; } ;
typedef int fsb ;
struct TYPE_3__ {int fs_flags; int fs_rights_base; int fs_rights_inheriting; } ;
typedef TYPE_1__ cloudabi_fdstat_t ;
typedef int cap_rights_t ;


 int CLOUDABI_FDFLAG_APPEND ;
 int CLOUDABI_FDFLAG_DSYNC ;
 int CLOUDABI_FDFLAG_NONBLOCK ;
 int CLOUDABI_FDFLAG_RSYNC ;
 int CLOUDABI_FDFLAG_SYNC ;
 scalar_t__ CLOUDABI_FDSTAT_FLAGS ;
 scalar_t__ CLOUDABI_FDSTAT_RIGHTS ;
 int EINVAL ;
 int F_SETFL ;
 int O_APPEND ;
 int O_NONBLOCK ;
 int O_SYNC ;
 int cloudabi_convert_rights (int,int *) ;
 int copyin (int ,TYPE_1__*,int) ;
 int kern_cap_rights_limit (struct thread*,int ,int *) ;
 int kern_fcntl (struct thread*,int ,int ,int) ;

int
cloudabi_sys_fd_stat_put(struct thread *td,
    struct cloudabi_sys_fd_stat_put_args *uap)
{
 cloudabi_fdstat_t fsb;
 cap_rights_t rights;
 int error, oflags;

 error = copyin(uap->buf, &fsb, sizeof(fsb));
 if (error != 0)
  return (error);

 if (uap->flags == CLOUDABI_FDSTAT_FLAGS) {

  oflags = 0;
  if (fsb.fs_flags & CLOUDABI_FDFLAG_APPEND)
   oflags |= O_APPEND;
  if (fsb.fs_flags & CLOUDABI_FDFLAG_NONBLOCK)
   oflags |= O_NONBLOCK;
  if (fsb.fs_flags & (CLOUDABI_FDFLAG_SYNC |
      CLOUDABI_FDFLAG_DSYNC | CLOUDABI_FDFLAG_RSYNC))
   oflags |= O_SYNC;
  return (kern_fcntl(td, uap->fd, F_SETFL, oflags));
 } else if (uap->flags == CLOUDABI_FDSTAT_RIGHTS) {

  error = cloudabi_convert_rights(
      fsb.fs_rights_base | fsb.fs_rights_inheriting, &rights);
  if (error != 0)
   return (error);
  return (kern_cap_rights_limit(td, uap->fd, &rights));
 }
 return (EINVAL);
}
