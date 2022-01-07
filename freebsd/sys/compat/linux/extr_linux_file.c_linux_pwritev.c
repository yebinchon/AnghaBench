
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct thread {int dummy; } ;
struct linux_pwritev_args {int pos_l; int fd; int vlen; int vec; scalar_t__ pos_h; } ;
typedef int offset ;
typedef int off_t ;


 int EINVAL ;
 int M_IOV ;
 int PTRIN (int ) ;
 int copyinuio (int ,int ,struct uio**) ;
 int free (struct uio*,int ) ;
 int kern_pwritev (struct thread*,int ,struct uio*,int) ;
 int linux32_copyinuio (int ,int ,struct uio**) ;

int
linux_pwritev(struct thread *td, struct linux_pwritev_args *uap)
{
 struct uio *auio;
 int error;
 off_t offset;






 offset = (((off_t)uap->pos_h << (sizeof(offset) * 4)) <<
     (sizeof(offset) * 4)) | uap->pos_l;
 if (offset < 0)
  return (EINVAL);



 error = copyinuio(uap->vec, uap->vlen, &auio);

 if (error != 0)
  return (error);
 error = kern_pwritev(td, uap->fd, auio, offset);
 free(auio, M_IOV);
 return (error);
}
