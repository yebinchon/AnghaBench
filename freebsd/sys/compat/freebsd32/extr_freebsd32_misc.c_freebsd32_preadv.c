
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct thread {int dummy; } ;
struct freebsd32_preadv_args {int offset; int fd; int iovcnt; int iovp; } ;


 int M_IOV ;
 int PAIR32TO64 (int ,int ) ;
 int free (struct uio*,int ) ;
 int freebsd32_copyinuio (int ,int ,struct uio**) ;
 int kern_preadv (struct thread*,int ,struct uio*,int ) ;
 int off_t ;

int
freebsd32_preadv(struct thread *td, struct freebsd32_preadv_args *uap)
{
 struct uio *auio;
 int error;

 error = freebsd32_copyinuio(uap->iovp, uap->iovcnt, &auio);
 if (error)
  return (error);
 error = kern_preadv(td, uap->fd, auio, PAIR32TO64(off_t,uap->offset));
 free(auio, M_IOV);
 return (error);
}
