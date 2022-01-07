
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct thread {int* td_retval; int td_ucred; TYPE_3__* td_proc; } ;
struct nameidata {struct vnode* ni_vp; int ni_filecaps; } ;
struct filecaps {int fc_fcntls; int fc_rights; } ;
struct file {int f_flag; int f_seqcount; int * f_ops; struct vnode* f_vnode; } ;
struct TYPE_6__ {int flags; int fd; } ;
struct cloudabi_sys_file_open_args {int oflags; TYPE_1__ dirfd; int path_len; int path; int fds; } ;
typedef int fds ;
struct TYPE_9__ {int fs_rights_base; int fs_rights_inheriting; int fs_flags; } ;
typedef TYPE_4__ cloudabi_fdstat_t ;
typedef int cap_rights_t ;
struct TYPE_8__ {TYPE_2__* p_fd; } ;
struct TYPE_7__ {int fd_cmask; } ;


 int CAP_CREATE ;
 int CAP_FCNTL_SETFL ;
 int CAP_FSYNC ;
 int CAP_FTRUNCATE ;
 int CAP_LOOKUP ;
 int CAP_SEEK ;
 int CLOUDABI_FDFLAG_APPEND ;
 int CLOUDABI_FDFLAG_DSYNC ;
 int CLOUDABI_FDFLAG_NONBLOCK ;
 int CLOUDABI_FDFLAG_RSYNC ;
 int CLOUDABI_FDFLAG_SYNC ;
 int CLOUDABI_LOOKUP_SYMLINK_FOLLOW ;
 int CLOUDABI_O_CREAT ;
 int CLOUDABI_O_DIRECTORY ;
 int CLOUDABI_O_EXCL ;
 int CLOUDABI_O_TRUNC ;
 int CLOUDABI_RIGHT_FD_DATASYNC ;
 int CLOUDABI_RIGHT_FD_READ ;
 int CLOUDABI_RIGHT_FD_WRITE ;
 int CLOUDABI_RIGHT_FILE_ALLOCATE ;
 int CLOUDABI_RIGHT_FILE_READDIR ;
 int CLOUDABI_RIGHT_FILE_STAT_FPUT_SIZE ;
 int CLOUDABI_RIGHT_MEM_MAP_EXEC ;
 int DTYPE_VNODE ;
 int ELOOP ;
 int EMLINK ;
 int ENXIO ;
 int FHASLOCK ;
 int FMASK ;
 int FOLLOW ;
 int FREAD ;
 int FWRITE ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT_ATRIGHTS (struct nameidata*,int ,int ,int ,char*,int ,int *,struct thread*) ;
 int O_APPEND ;
 int O_CREAT ;
 int O_DIRECTORY ;
 int O_EXCL ;
 int O_NOFOLLOW ;
 int O_NONBLOCK ;
 int O_SYNC ;
 int O_TRUNC ;
 int UIO_SYSSPACE ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int badfileops ;
 scalar_t__ cap_rights_is_set (int *) ;
 int cap_rights_set (int *,int ) ;
 int cloudabi_convert_filetype (struct file*) ;
 int cloudabi_convert_rights (int,int *) ;
 int cloudabi_freestr (char*) ;
 int cloudabi_remove_conflicting_rights (int ,int*,int*) ;
 int copyin (int ,TYPE_4__*,int) ;
 int copyin_path (int ,int ,char**) ;
 int falloc_noinstall (struct thread*,struct file**) ;
 int fdrop (struct file*,struct thread*) ;
 int filecaps_free (int *) ;
 int finit (struct file*,int,int ,struct vnode*,int *) ;
 int finstall (struct thread*,struct file*,int*,int,struct filecaps*) ;
 int fo_truncate (struct file*,int ,int ,struct thread*) ;
 int vn_open (struct nameidata*,int*,int,struct file*) ;
 int vnops ;

int
cloudabi_sys_file_open(struct thread *td,
    struct cloudabi_sys_file_open_args *uap)
{
 cloudabi_fdstat_t fds;
 cap_rights_t rights;
 struct filecaps fcaps = {};
 struct nameidata nd;
 struct file *fp;
 struct vnode *vp;
 char *path;
 int error, fd, fflags;
 bool read, write;

 error = copyin(uap->fds, &fds, sizeof(fds));
 if (error != 0)
  return (error);


 error = cloudabi_convert_rights(
     fds.fs_rights_base | fds.fs_rights_inheriting, &rights);
 if (error != 0)
  return (error);
 cap_rights_set(&rights, CAP_LOOKUP);


 read = (fds.fs_rights_base & (CLOUDABI_RIGHT_FD_READ |
     CLOUDABI_RIGHT_FILE_READDIR | CLOUDABI_RIGHT_MEM_MAP_EXEC)) != 0;
 write = (fds.fs_rights_base & (CLOUDABI_RIGHT_FD_DATASYNC |
     CLOUDABI_RIGHT_FD_WRITE | CLOUDABI_RIGHT_FILE_ALLOCATE |
     CLOUDABI_RIGHT_FILE_STAT_FPUT_SIZE)) != 0;
 fflags = write ? read ? FREAD | FWRITE : FWRITE : FREAD;


 if ((uap->oflags & CLOUDABI_O_CREAT) != 0) {
  fflags |= O_CREAT;
  cap_rights_set(&rights, CAP_CREATE);
 }
 if ((uap->oflags & CLOUDABI_O_DIRECTORY) != 0)
  fflags |= O_DIRECTORY;
 if ((uap->oflags & CLOUDABI_O_EXCL) != 0)
  fflags |= O_EXCL;
 if ((uap->oflags & CLOUDABI_O_TRUNC) != 0) {
  fflags |= O_TRUNC;
  cap_rights_set(&rights, CAP_FTRUNCATE);
 }
 if ((fds.fs_flags & CLOUDABI_FDFLAG_APPEND) != 0)
  fflags |= O_APPEND;
 if ((fds.fs_flags & CLOUDABI_FDFLAG_NONBLOCK) != 0)
  fflags |= O_NONBLOCK;
 if ((fds.fs_flags & (CLOUDABI_FDFLAG_SYNC | CLOUDABI_FDFLAG_DSYNC |
     CLOUDABI_FDFLAG_RSYNC)) != 0) {
  fflags |= O_SYNC;
  cap_rights_set(&rights, CAP_FSYNC);
 }
 if ((uap->dirfd.flags & CLOUDABI_LOOKUP_SYMLINK_FOLLOW) == 0)
  fflags |= O_NOFOLLOW;
 if (write && (fflags & (O_APPEND | O_TRUNC)) == 0)
  cap_rights_set(&rights, CAP_SEEK);


 error = falloc_noinstall(td, &fp);
 if (error != 0)
  return (error);
 fp->f_flag = fflags & FMASK;


 error = copyin_path(uap->path, uap->path_len, &path);
 if (error != 0) {
  fdrop(fp, td);
  return (error);
 }
 NDINIT_ATRIGHTS(&nd, LOOKUP, FOLLOW, UIO_SYSSPACE, path, uap->dirfd.fd,
     &rights, td);
 error = vn_open(&nd, &fflags, 0777 & ~td->td_proc->p_fd->fd_cmask, fp);
 cloudabi_freestr(path);
 if (error != 0) {

  if (error == ENXIO && fp->f_ops != &badfileops)
   goto success;





  if (error == EMLINK)
   error = ELOOP;
  fdrop(fp, td);
  return (error);
 }
 NDFREE(&nd, NDF_ONLY_PNBUF);
 filecaps_free(&nd.ni_filecaps);
 fp->f_vnode = vp = nd.ni_vp;


 if (fp->f_ops == &badfileops) {
  fp->f_seqcount = 1;
  finit(fp, (fflags & FMASK) | (fp->f_flag & FHASLOCK),
      DTYPE_VNODE, vp, &vnops);
 }
 VOP_UNLOCK(vp, 0);


 if (fflags & O_TRUNC) {
  error = fo_truncate(fp, 0, td->td_ucred, td);
  if (error != 0) {
   fdrop(fp, td);
   return (error);
  }
 }

success:

 cloudabi_remove_conflicting_rights(cloudabi_convert_filetype(fp),
     &fds.fs_rights_base, &fds.fs_rights_inheriting);
 cloudabi_convert_rights(fds.fs_rights_base | fds.fs_rights_inheriting,
     &fcaps.fc_rights);
 if (cap_rights_is_set(&fcaps.fc_rights))
  fcaps.fc_fcntls = CAP_FCNTL_SETFL;

 error = finstall(td, fp, &fd, fflags, &fcaps);
 fdrop(fp, td);
 if (error != 0)
  return (error);
 td->td_retval[0] = fd;
 return (0);
}
