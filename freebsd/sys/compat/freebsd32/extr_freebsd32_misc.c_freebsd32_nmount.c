
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct uio {int dummy; } ;
struct thread {int dummy; } ;
struct freebsd32_nmount_args {int iovcnt; int iovp; int flags; } ;


 int AUDIT_ARG_FFLAGS (int ) ;
 int EINVAL ;
 int MNT_ROOTFS ;
 int M_IOV ;
 int free (struct uio*,int ) ;
 int freebsd32_copyinuio (int ,int,struct uio**) ;
 int vfs_donmount (struct thread*,int ,struct uio*) ;

int
freebsd32_nmount(struct thread *td,
    struct freebsd32_nmount_args *uap)




{
 struct uio *auio;
 uint64_t flags;
 int error;






 flags = uap->flags;

 AUDIT_ARG_FFLAGS(flags);
 flags &= ~MNT_ROOTFS;





 if ((uap->iovcnt & 1) || (uap->iovcnt < 4))
  return (EINVAL);

 error = freebsd32_copyinuio(uap->iovp, uap->iovcnt, &auio);
 if (error)
  return (error);
 error = vfs_donmount(td, flags, auio);

 free(auio, M_IOV);
 return error;
}
