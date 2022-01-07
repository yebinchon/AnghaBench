
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct file {scalar_t__ f_type; struct eventfd* f_data; } ;
struct eventfd {scalar_t__ efd_count; int efd_lock; int efd_sel; } ;


 scalar_t__ DTYPE_LINUXEFD ;
 int POLLERR ;
 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int UINT64_MAX ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
eventfd_poll(struct file *fp, int events, struct ucred *active_cred,
    struct thread *td)
{
 struct eventfd *efd;
 int revents = 0;

 efd = fp->f_data;
 if (fp->f_type != DTYPE_LINUXEFD || efd == ((void*)0))
  return (POLLERR);

 mtx_lock(&efd->efd_lock);
 if ((events & (POLLIN|POLLRDNORM)) && efd->efd_count > 0)
  revents |= events & (POLLIN|POLLRDNORM);
 if ((events & (POLLOUT|POLLWRNORM)) && UINT64_MAX - 1 > efd->efd_count)
  revents |= events & (POLLOUT|POLLWRNORM);
 if (revents == 0)
  selrecord(td, &efd->efd_sel);
 mtx_unlock(&efd->efd_lock);

 return (revents);
}
