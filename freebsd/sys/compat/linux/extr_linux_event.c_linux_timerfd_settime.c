
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct timespec {int dummy; } ;
struct itimerspec {struct timespec it_value; int it_interval; } ;
struct timerfd {int tfd_canceled; int tfd_lock; int tfd_callout; struct itimerspec tfd_time; } ;
struct thread {int dummy; } ;
struct linux_timerfd_settime_args {int flags; int * old_value; int fd; int new_value; } ;
struct l_itimerspec {int dummy; } ;
struct file {scalar_t__ f_type; struct timerfd* f_data; } ;
typedef int lots ;


 scalar_t__ DTYPE_LINUXTFD ;
 int EINVAL ;
 int LINUX_TFD_SETTIME_FLAGS ;
 int LINUX_TFD_TIMER_ABSTIME ;
 int TIMESPEC_TO_TIMEVAL (struct timeval*,struct timespec*) ;
 int callout_reset (int *,int ,int ,struct timerfd*) ;
 int callout_stop (int *) ;
 int cap_write_rights ;
 int copyin (int ,struct l_itimerspec*,int) ;
 int copyout (struct l_itimerspec*,int *,int) ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int ,int *,struct file**) ;
 int linux_timerfd_clocktime (struct timerfd*,struct timespec*) ;
 int linux_timerfd_curval (struct timerfd*,struct itimerspec*) ;
 int linux_timerfd_expire ;
 int linux_to_native_itimerspec (struct itimerspec*,struct l_itimerspec*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int native_to_linux_itimerspec (struct l_itimerspec*,struct itimerspec*) ;
 int timespecadd (struct timespec*,struct timespec*,struct timespec*) ;
 int timespecclear (int *) ;
 scalar_t__ timespecisset (struct timespec*) ;
 int timespecsub (struct timespec*,struct timespec*,struct timespec*) ;
 int tvtohz (struct timeval*) ;

int
linux_timerfd_settime(struct thread *td, struct linux_timerfd_settime_args *args)
{
 struct l_itimerspec lots;
 struct itimerspec nts, ots;
 struct timespec cts, ts;
 struct timerfd *tfd;
 struct timeval tv;
 struct file *fp;
 int error;

 if ((args->flags & ~LINUX_TFD_SETTIME_FLAGS) != 0)
  return (EINVAL);

 error = copyin(args->new_value, &lots, sizeof(lots));
 if (error != 0)
  return (error);
 error = linux_to_native_itimerspec(&nts, &lots);
 if (error != 0)
  return (error);

 error = fget(td, args->fd, &cap_write_rights, &fp);
 if (error != 0)
  return (error);
 tfd = fp->f_data;
 if (fp->f_type != DTYPE_LINUXTFD || tfd == ((void*)0)) {
  error = EINVAL;
  goto out;
 }

 mtx_lock(&tfd->tfd_lock);
 if (!timespecisset(&nts.it_value))
  timespecclear(&nts.it_interval);
 if (args->old_value != ((void*)0))
  linux_timerfd_curval(tfd, &ots);

 tfd->tfd_time = nts;
 if (timespecisset(&nts.it_value)) {
  linux_timerfd_clocktime(tfd, &cts);
  ts = nts.it_value;
  if ((args->flags & LINUX_TFD_TIMER_ABSTIME) == 0) {
   timespecadd(&tfd->tfd_time.it_value, &cts,
    &tfd->tfd_time.it_value);
  } else {
   timespecsub(&ts, &cts, &ts);
  }
  TIMESPEC_TO_TIMEVAL(&tv, &ts);
  callout_reset(&tfd->tfd_callout, tvtohz(&tv),
   linux_timerfd_expire, tfd);
  tfd->tfd_canceled = 0;
 } else {
  tfd->tfd_canceled = 1;
  callout_stop(&tfd->tfd_callout);
 }
 mtx_unlock(&tfd->tfd_lock);

 if (args->old_value != ((void*)0)) {
  error = native_to_linux_itimerspec(&lots, &ots);
  if (error == 0)
   error = copyout(&lots, args->old_value, sizeof(lots));
 }

out:
 fdrop(fp, td);
 return (error);
}
