
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct file {scalar_t__ f_type; int * f_ops; struct eventfd* f_data; } ;
struct TYPE_2__ {int si_note; } ;
struct eventfd {int efd_lock; TYPE_1__ efd_sel; } ;


 scalar_t__ DTYPE_LINUXEFD ;
 int EINVAL ;
 int M_EPOLL ;
 int badfileops ;
 int free (struct eventfd*,int ) ;
 int knlist_destroy (int *) ;
 int mtx_destroy (int *) ;
 int seldrain (TYPE_1__*) ;

__attribute__((used)) static int
eventfd_close(struct file *fp, struct thread *td)
{
 struct eventfd *efd;

 efd = fp->f_data;
 if (fp->f_type != DTYPE_LINUXEFD || efd == ((void*)0))
  return (EINVAL);

 seldrain(&efd->efd_sel);
 knlist_destroy(&efd->efd_sel.si_note);

 fp->f_ops = &badfileops;
 mtx_destroy(&efd->efd_lock);
 free(efd, M_EPOLL);

 return (0);
}
