
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct timerfd {scalar_t__ tfd_count; int tfd_lock; int tfd_sel; } ;
struct thread {int dummy; } ;
struct file {scalar_t__ f_type; struct timerfd* f_data; } ;


 scalar_t__ DTYPE_LINUXTFD ;
 int POLLERR ;
 int POLLIN ;
 int POLLRDNORM ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
timerfd_poll(struct file *fp, int events, struct ucred *active_cred,
    struct thread *td)
{
 struct timerfd *tfd;
 int revents = 0;

 tfd = fp->f_data;
 if (fp->f_type != DTYPE_LINUXTFD || tfd == ((void*)0))
  return (POLLERR);

 mtx_lock(&tfd->tfd_lock);
 if ((events & (POLLIN|POLLRDNORM)) && tfd->tfd_count > 0)
  revents |= events & (POLLIN|POLLRDNORM);
 if (revents == 0)
  selrecord(td, &tfd->tfd_sel);
 mtx_unlock(&tfd->tfd_lock);

 return (revents);
}
