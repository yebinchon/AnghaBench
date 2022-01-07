
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timerfd {int tfd_lock; } ;
struct thread {int dummy; } ;
struct linux_timerfd_gettime_args {int old_value; int fd; } ;
struct l_itimerspec {int dummy; } ;
struct itimerspec {int dummy; } ;
struct file {scalar_t__ f_type; struct timerfd* f_data; } ;
typedef int lots ;


 scalar_t__ DTYPE_LINUXTFD ;
 int EINVAL ;
 int cap_read_rights ;
 int copyout (struct l_itimerspec*,int ,int) ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int ,int *,struct file**) ;
 int linux_timerfd_curval (struct timerfd*,struct itimerspec*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int native_to_linux_itimerspec (struct l_itimerspec*,struct itimerspec*) ;

int
linux_timerfd_gettime(struct thread *td, struct linux_timerfd_gettime_args *args)
{
 struct l_itimerspec lots;
 struct itimerspec ots;
 struct timerfd *tfd;
 struct file *fp;
 int error;

 error = fget(td, args->fd, &cap_read_rights, &fp);
 if (error != 0)
  return (error);
 tfd = fp->f_data;
 if (fp->f_type != DTYPE_LINUXTFD || tfd == ((void*)0)) {
  error = EINVAL;
  goto out;
 }

 mtx_lock(&tfd->tfd_lock);
 linux_timerfd_curval(tfd, &ots);
 mtx_unlock(&tfd->tfd_lock);

 error = native_to_linux_itimerspec(&lots, &ots);
 if (error == 0)
  error = copyout(&lots, args->old_value, sizeof(lots));

out:
 fdrop(fp, td);
 return (error);
}
