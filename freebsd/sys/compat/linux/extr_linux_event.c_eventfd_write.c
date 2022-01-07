
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {int uio_resid; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct file {scalar_t__ f_type; int f_flag; struct eventfd* f_data; } ;
struct TYPE_2__ {int si_note; } ;
struct eventfd {scalar_t__ efd_count; int efd_lock; TYPE_1__ efd_sel; } ;
typedef scalar_t__ eventfd_t ;


 scalar_t__ DTYPE_LINUXEFD ;
 int EAGAIN ;
 int EINVAL ;
 int FNONBLOCK ;
 int KNOTE_LOCKED (int *,int ) ;
 int PCATCH ;
 scalar_t__ UINT64_MAX ;
 int mtx_lock (int *) ;
 int mtx_sleep (scalar_t__*,int *,int ,char*,int ) ;
 int mtx_unlock (int *) ;
 int selwakeup (TYPE_1__*) ;
 int uiomove (scalar_t__*,int,struct uio*) ;
 int wakeup (scalar_t__*) ;

__attribute__((used)) static int
eventfd_write(struct file *fp, struct uio *uio, struct ucred *active_cred,
     int flags, struct thread *td)
{
 struct eventfd *efd;
 eventfd_t count;
 int error;

 efd = fp->f_data;
 if (fp->f_type != DTYPE_LINUXEFD || efd == ((void*)0))
  return (EINVAL);

 if (uio->uio_resid < sizeof(eventfd_t))
  return (EINVAL);

 error = uiomove(&count, sizeof(eventfd_t), uio);
 if (error != 0)
  return (error);
 if (count == UINT64_MAX)
  return (EINVAL);

 mtx_lock(&efd->efd_lock);
retry:
 if (UINT64_MAX - efd->efd_count <= count) {
  if ((fp->f_flag & FNONBLOCK) != 0) {
   mtx_unlock(&efd->efd_lock);

   uio->uio_resid += sizeof(eventfd_t);
   return (EAGAIN);
  }
  error = mtx_sleep(&efd->efd_count, &efd->efd_lock,
      PCATCH, "lefdwr", 0);
  if (error == 0)
   goto retry;
 }
 if (error == 0) {
  efd->efd_count += count;
  KNOTE_LOCKED(&efd->efd_sel.si_note, 0);
  selwakeup(&efd->efd_sel);
  wakeup(&efd->efd_count);
 }
 mtx_unlock(&efd->efd_lock);

 return (error);
}
