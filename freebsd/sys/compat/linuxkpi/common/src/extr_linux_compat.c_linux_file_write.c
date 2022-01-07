
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct uio {int uio_iovcnt; scalar_t__ uio_resid; TYPE_1__* uio_iov; int uio_offset; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct linux_file {int f_flags; } ;
struct linux_cdev {int dummy; } ;
struct file_operations {int (* write ) (struct linux_file*,int *,int,int *) ;} ;
struct file {int f_flag; scalar_t__ f_data; } ;
typedef int ssize_t ;
struct TYPE_2__ {int iov_len; int * iov_base; } ;


 scalar_t__ DEVFS_IOSIZE_MAX ;
 int EINVAL ;
 int ENXIO ;
 int EOPNOTSUPP ;
 int LINUX_KQ_FLAG_HAS_WRITE ;
 int OPW (struct file*,struct thread*,int ) ;
 int current ;
 int linux_drop_fop (struct linux_cdev*) ;
 int linux_file_kqfilter_poll (struct linux_file*,int ) ;
 int linux_get_error (int ,int) ;
 int linux_get_fop (struct linux_file*,struct file_operations const**,struct linux_cdev**) ;
 int linux_set_current (struct thread*) ;
 int stub1 (struct linux_file*,int *,int,int *) ;

__attribute__((used)) static int
linux_file_write(struct file *file, struct uio *uio, struct ucred *active_cred,
    int flags, struct thread *td)
{
 struct linux_file *filp;
 const struct file_operations *fop;
 struct linux_cdev *ldev;
 ssize_t bytes;
 int error;

 filp = (struct linux_file *)file->f_data;
 filp->f_flags = file->f_flag;

 if (uio->uio_iovcnt != 1)
  return (EOPNOTSUPP);
 if (uio->uio_resid > DEVFS_IOSIZE_MAX)
  return (EINVAL);
 linux_set_current(td);
 linux_get_fop(filp, &fop, &ldev);
 if (fop->write != ((void*)0)) {
  bytes = OPW(file, td, fop->write(filp,
      uio->uio_iov->iov_base,
      uio->uio_iov->iov_len, &uio->uio_offset));
  if (bytes >= 0) {
   uio->uio_iov->iov_base =
       ((uint8_t *)uio->uio_iov->iov_base) + bytes;
   uio->uio_iov->iov_len -= bytes;
   uio->uio_resid -= bytes;
   error = 0;
  } else {
   error = linux_get_error(current, -bytes);
  }
 } else
  error = ENXIO;


 linux_file_kqfilter_poll(filp, LINUX_KQ_FLAG_HAS_WRITE);

 linux_drop_fop(ldev);

 return (error);
}
