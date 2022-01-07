
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timerfd_t ;
struct uio {int uio_resid; } ;
struct ucred {int dummy; } ;
struct timerfd {scalar_t__ tfd_count; int tfd_lock; scalar_t__ tfd_canceled; } ;
struct thread {int dummy; } ;
struct file {scalar_t__ f_type; int f_flag; struct timerfd* f_data; } ;


 scalar_t__ DTYPE_LINUXTFD ;
 int EAGAIN ;
 int ECANCELED ;
 int EINVAL ;
 int FNONBLOCK ;
 int PCATCH ;
 int mtx_lock (int *) ;
 int mtx_sleep (scalar_t__*,int *,int ,char*,int ) ;
 int mtx_unlock (int *) ;
 int uiomove (scalar_t__*,int,struct uio*) ;

__attribute__((used)) static int
timerfd_read(struct file *fp, struct uio *uio, struct ucred *active_cred,
    int flags, struct thread *td)
{
 struct timerfd *tfd;
 timerfd_t count;
 int error;

 tfd = fp->f_data;
 if (fp->f_type != DTYPE_LINUXTFD || tfd == ((void*)0))
  return (EINVAL);

 if (uio->uio_resid < sizeof(timerfd_t))
  return (EINVAL);

 error = 0;
 mtx_lock(&tfd->tfd_lock);
retry:
 if (tfd->tfd_canceled) {
  tfd->tfd_count = 0;
  mtx_unlock(&tfd->tfd_lock);
  return (ECANCELED);
 }
 if (tfd->tfd_count == 0) {
  if ((fp->f_flag & FNONBLOCK) != 0) {
   mtx_unlock(&tfd->tfd_lock);
   return (EAGAIN);
  }
  error = mtx_sleep(&tfd->tfd_count, &tfd->tfd_lock, PCATCH, "ltfdrd", 0);
  if (error == 0)
   goto retry;
 }
 if (error == 0) {
  count = tfd->tfd_count;
  tfd->tfd_count = 0;
  mtx_unlock(&tfd->tfd_lock);
  error = uiomove(&count, sizeof(timerfd_t), uio);
 } else
  mtx_unlock(&tfd->tfd_lock);

 return (error);
}
