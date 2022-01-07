
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct filecaps {int fc_rights; } ;
struct file {int f_flag; } ;
struct cloudabi_sys_fd_stat_get_args {scalar_t__ buf; int fd; } ;
typedef int fsb ;
struct TYPE_3__ {int fs_rights_inheriting; int fs_rights_base; int fs_filetype; int fs_flags; int member_0; } ;
typedef TYPE_1__ cloudabi_fdstat_t ;
typedef int cap_rights_t ;


 int CLOUDABI_FDFLAG_APPEND ;
 int CLOUDABI_FDFLAG_NONBLOCK ;
 int CLOUDABI_FDFLAG_SYNC ;
 int OFLAGS (int ) ;
 int O_APPEND ;
 int O_NONBLOCK ;
 int O_SYNC ;
 int cap_rights_init (int *) ;
 int cloudabi_convert_filetype (struct file*) ;
 int convert_capabilities (int *,int ,int *,int *) ;
 int copyout (TYPE_1__*,void*,int) ;
 int fdrop (struct file*,struct thread*) ;
 int fget_cap (struct thread*,int ,int ,struct file**,struct filecaps*) ;
 int filecaps_free (struct filecaps*) ;

int
cloudabi_sys_fd_stat_get(struct thread *td,
    struct cloudabi_sys_fd_stat_get_args *uap)
{
 cloudabi_fdstat_t fsb = {0};
 struct file *fp;
 cap_rights_t rights;
 struct filecaps fcaps;
 int error, oflags;


 error = fget_cap(td, uap->fd, cap_rights_init(&rights), &fp,
     &fcaps);
 if (error != 0)
  return (error);
 oflags = OFLAGS(fp->f_flag);
 fsb.fs_filetype = cloudabi_convert_filetype(fp);
 fdrop(fp, td);


 if (oflags & O_APPEND)
  fsb.fs_flags |= CLOUDABI_FDFLAG_APPEND;
 if (oflags & O_NONBLOCK)
  fsb.fs_flags |= CLOUDABI_FDFLAG_NONBLOCK;
 if (oflags & O_SYNC)
  fsb.fs_flags |= CLOUDABI_FDFLAG_SYNC;


 convert_capabilities(&fcaps.fc_rights, fsb.fs_filetype,
     &fsb.fs_rights_base, &fsb.fs_rights_inheriting);
 filecaps_free(&fcaps);
 return (copyout(&fsb, (void *)uap->buf, sizeof(fsb)));
}
