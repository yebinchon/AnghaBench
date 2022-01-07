
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int* td_retval; int td_ucred; struct proc* td_proc; } ;
struct proc {int p_flag; } ;
struct file {scalar_t__ f_type; } ;
typedef int caddr_t ;


 scalar_t__ DTYPE_VNODE ;
 int LFREEPATH (char*) ;
 int LINUX_FASYNC ;
 int LINUX_O_ACCMODE ;
 int LINUX_O_APPEND ;
 int LINUX_O_CLOEXEC ;
 int LINUX_O_CREAT ;
 int LINUX_O_DIRECT ;
 int LINUX_O_DIRECTORY ;
 int LINUX_O_EXCL ;
 int LINUX_O_NDELAY ;
 int LINUX_O_NOCTTY ;
 int LINUX_O_NOFOLLOW ;
 int LINUX_O_NONBLOCK ;

 int LINUX_O_SYNC ;
 int LINUX_O_TRUNC ;

 int O_APPEND ;
 int O_ASYNC ;
 int O_CLOEXEC ;
 int O_CREAT ;
 int O_DIRECT ;
 int O_DIRECTORY ;
 int O_EXCL ;
 int O_FSYNC ;
 int O_NOCTTY ;
 int O_NOFOLLOW ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_TRUNC ;
 int O_WRONLY ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_CONTROLT ;
 scalar_t__ SESS_LEADER (struct proc*) ;
 int TIOCSCTTY ;
 int UIO_SYSSPACE ;
 int cap_ioctl_rights ;
 int fdrop (struct file*,struct thread*) ;
 scalar_t__ fget (struct thread*,int,int *,struct file**) ;
 int fo_ioctl (struct file*,int ,int ,int ,struct thread*) ;
 int kern_openat (struct thread*,int,char*,int ,int,int) ;
 int proctree_lock ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;

__attribute__((used)) static int
linux_common_open(struct thread *td, int dirfd, char *path, int l_flags, int mode)
{
 struct proc *p = td->td_proc;
 struct file *fp;
 int fd;
 int bsd_flags, error;

 bsd_flags = 0;
 switch (l_flags & LINUX_O_ACCMODE) {
 case 128:
  bsd_flags |= O_WRONLY;
  break;
 case 129:
  bsd_flags |= O_RDWR;
  break;
 default:
  bsd_flags |= O_RDONLY;
 }
 if (l_flags & LINUX_O_NDELAY)
  bsd_flags |= O_NONBLOCK;
 if (l_flags & LINUX_O_APPEND)
  bsd_flags |= O_APPEND;
 if (l_flags & LINUX_O_SYNC)
  bsd_flags |= O_FSYNC;
 if (l_flags & LINUX_O_CLOEXEC)
  bsd_flags |= O_CLOEXEC;
 if (l_flags & LINUX_O_NONBLOCK)
  bsd_flags |= O_NONBLOCK;
 if (l_flags & LINUX_FASYNC)
  bsd_flags |= O_ASYNC;
 if (l_flags & LINUX_O_CREAT)
  bsd_flags |= O_CREAT;
 if (l_flags & LINUX_O_TRUNC)
  bsd_flags |= O_TRUNC;
 if (l_flags & LINUX_O_EXCL)
  bsd_flags |= O_EXCL;
 if (l_flags & LINUX_O_NOCTTY)
  bsd_flags |= O_NOCTTY;
 if (l_flags & LINUX_O_DIRECT)
  bsd_flags |= O_DIRECT;
 if (l_flags & LINUX_O_NOFOLLOW)
  bsd_flags |= O_NOFOLLOW;
 if (l_flags & LINUX_O_DIRECTORY)
  bsd_flags |= O_DIRECTORY;


 error = kern_openat(td, dirfd, path, UIO_SYSSPACE, bsd_flags, mode);
 if (error != 0)
  goto done;
 if (bsd_flags & O_NOCTTY)
  goto done;






 fd = td->td_retval[0];
 if (fget(td, fd, &cap_ioctl_rights, &fp) == 0) {
  if (fp->f_type != DTYPE_VNODE) {
   fdrop(fp, td);
   goto done;
  }
  sx_slock(&proctree_lock);
  PROC_LOCK(p);
  if (SESS_LEADER(p) && !(p->p_flag & P_CONTROLT)) {
   PROC_UNLOCK(p);
   sx_sunlock(&proctree_lock);

   (void) fo_ioctl(fp, TIOCSCTTY, (caddr_t) 0,
       td->td_ucred, td);
  } else {
   PROC_UNLOCK(p);
   sx_sunlock(&proctree_lock);
  }
  fdrop(fp, td);
 }

done:
 LFREEPATH(path);
 return (error);
}
