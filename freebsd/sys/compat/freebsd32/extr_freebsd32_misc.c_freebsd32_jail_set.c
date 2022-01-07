
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct thread {int dummy; } ;
struct freebsd32_jail_set_args {int iovcnt; int flags; int iovp; } ;


 int EINVAL ;
 int M_IOV ;
 int free (struct uio*,int ) ;
 int freebsd32_copyinuio (int ,int,struct uio**) ;
 int kern_jail_set (struct thread*,struct uio*,int ) ;

int
freebsd32_jail_set(struct thread *td, struct freebsd32_jail_set_args *uap)
{
 struct uio *auio;
 int error;


 if (uap->iovcnt & 1)
  return (EINVAL);

 error = freebsd32_copyinuio(uap->iovp, uap->iovcnt, &auio);
 if (error)
  return (error);
 error = kern_jail_set(td, auio, uap->flags);
 free(auio, M_IOV);
 return (error);
}
