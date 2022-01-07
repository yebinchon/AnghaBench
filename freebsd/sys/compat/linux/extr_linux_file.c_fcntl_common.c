
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int* td_retval; } ;
struct linux_fcntl_args {int cmd; intptr_t arg; int fd; } ;
struct l_flock {int dummy; } ;
struct flock {int dummy; } ;
struct file {int f_type; } ;
typedef int linux_flock ;


 int DTYPE_PIPE ;
 int EINVAL ;
 int F_DUPFD ;
 int F_DUPFD_CLOEXEC ;
 int F_GETFD ;
 int F_GETFL ;
 int F_GETLK ;
 int F_GETOWN ;
 int F_SETFD ;
 int F_SETFL ;
 int F_SETLK ;
 int F_SETLKW ;
 int F_SETOWN ;
 int LINUX_FASYNC ;
 int LINUX_O_APPEND ;
 int LINUX_O_DIRECT ;
 int LINUX_O_NDELAY ;
 int LINUX_O_NOFOLLOW ;
 int LINUX_O_NONBLOCK ;
 int LINUX_O_RDONLY ;
 int LINUX_O_RDWR ;
 int LINUX_O_SYNC ;
 int LINUX_O_WRONLY ;
 int O_APPEND ;
 int O_ASYNC ;
 int O_DIRECT ;
 int O_FSYNC ;
 int O_NDELAY ;
 int O_NOFOLLOW ;
 long O_NONBLOCK ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_WRONLY ;
 int bsd_to_linux_flock (struct flock*,struct l_flock*) ;
 int cap_fcntl_rights ;
 int copyin (void*,struct l_flock*,int) ;
 int copyout (struct l_flock*,void*,int) ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int ,int *,struct file**) ;
 int kern_fcntl (struct thread*,int ,int ,intptr_t) ;
 int linux_to_bsd_flock (struct l_flock*,struct flock*) ;

__attribute__((used)) static int
fcntl_common(struct thread *td, struct linux_fcntl_args *args)
{
 struct l_flock linux_flock;
 struct flock bsd_flock;
 struct file *fp;
 long arg;
 int error, result;

 switch (args->cmd) {
 case 138:
  return (kern_fcntl(td, args->fd, F_DUPFD, args->arg));

 case 136:
  return (kern_fcntl(td, args->fd, F_GETFD, 0));

 case 132:
  return (kern_fcntl(td, args->fd, F_SETFD, args->arg));

 case 135:
  error = kern_fcntl(td, args->fd, F_GETFL, 0);
  result = td->td_retval[0];
  td->td_retval[0] = 0;
  if (result & O_RDONLY)
   td->td_retval[0] |= LINUX_O_RDONLY;
  if (result & O_WRONLY)
   td->td_retval[0] |= LINUX_O_WRONLY;
  if (result & O_RDWR)
   td->td_retval[0] |= LINUX_O_RDWR;
  if (result & O_NDELAY)
   td->td_retval[0] |= LINUX_O_NONBLOCK;
  if (result & O_APPEND)
   td->td_retval[0] |= LINUX_O_APPEND;
  if (result & O_FSYNC)
   td->td_retval[0] |= LINUX_O_SYNC;
  if (result & O_ASYNC)
   td->td_retval[0] |= LINUX_FASYNC;
  return (error);

 case 131:
  arg = 0;
  if (args->arg & LINUX_O_NDELAY)
   arg |= O_NONBLOCK;
  if (args->arg & LINUX_O_APPEND)
   arg |= O_APPEND;
  if (args->arg & LINUX_O_SYNC)
   arg |= O_FSYNC;
  if (args->arg & LINUX_FASYNC)
   arg |= O_ASYNC;
  return (kern_fcntl(td, args->fd, F_SETFL, arg));

 case 134:
  error = copyin((void *)args->arg, &linux_flock,
      sizeof(linux_flock));
  if (error)
   return (error);
  linux_to_bsd_flock(&linux_flock, &bsd_flock);
  error = kern_fcntl(td, args->fd, F_GETLK, (intptr_t)&bsd_flock);
  if (error)
   return (error);
  bsd_to_linux_flock(&bsd_flock, &linux_flock);
  return (copyout(&linux_flock, (void *)args->arg,
      sizeof(linux_flock)));

 case 130:
  error = copyin((void *)args->arg, &linux_flock,
      sizeof(linux_flock));
  if (error)
   return (error);
  linux_to_bsd_flock(&linux_flock, &bsd_flock);
  return (kern_fcntl(td, args->fd, F_SETLK,
      (intptr_t)&bsd_flock));

 case 129:
  error = copyin((void *)args->arg, &linux_flock,
      sizeof(linux_flock));
  if (error)
   return (error);
  linux_to_bsd_flock(&linux_flock, &bsd_flock);
  return (kern_fcntl(td, args->fd, F_SETLKW,
       (intptr_t)&bsd_flock));

 case 133:
  return (kern_fcntl(td, args->fd, F_GETOWN, 0));

 case 128:





  error = fget(td, args->fd,
      &cap_fcntl_rights, &fp);
  if (error)
   return (error);
  if (fp->f_type == DTYPE_PIPE) {
   fdrop(fp, td);
   return (EINVAL);
  }
  fdrop(fp, td);

  return (kern_fcntl(td, args->fd, F_SETOWN, args->arg));

 case 137:
  return (kern_fcntl(td, args->fd, F_DUPFD_CLOEXEC, args->arg));
 }

 return (EINVAL);
}
