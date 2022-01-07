
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct thread {int dummy; } ;
struct iovec {int iov_len; void* iov_base; } ;
struct cloudabi64_sys_sock_recv_args {int out; int sock; TYPE_2__ const* in; } ;
typedef int ro ;
typedef int ri ;
typedef int iovobj ;
struct TYPE_7__ {size_t ro_datalen; size_t ro_fdslen; int ro_flags; } ;
typedef TYPE_1__ cloudabi64_recv_out_t ;
struct TYPE_8__ {size_t ri_data_len; int ri_flags; int ri_fds_len; int ri_fds; int buf_len; int buf; int ri_data; } ;
typedef TYPE_2__ cloudabi64_recv_in_t ;
typedef TYPE_2__ cloudabi64_iovec_t ;


 int EINVAL ;
 int M_SOCKET ;
 int M_WAITOK ;
 void* TO_PTR (int ) ;
 size_t UIO_MAXIOV ;
 int cloudabi_sock_recv (struct thread*,int ,struct iovec*,size_t,void*,int ,int ,size_t*,size_t*,int *) ;
 int copyin (TYPE_2__ const*,TYPE_2__*,int) ;
 int copyout (TYPE_1__*,int ,int) ;
 int free (struct iovec*,int ) ;
 struct iovec* mallocarray (size_t,int,int ,int ) ;

int
cloudabi64_sys_sock_recv(struct thread *td,
    struct cloudabi64_sys_sock_recv_args *uap)
{
 cloudabi64_recv_in_t ri;
 cloudabi64_recv_out_t ro = {};
 cloudabi64_iovec_t iovobj;
 struct iovec *iov;
 const cloudabi64_iovec_t *user_iov;
 size_t i, rdatalen, rfdslen;
 int error;

 error = copyin(uap->in, &ri, sizeof(ri));
 if (error != 0)
  return (error);


 if (ri.ri_data_len > UIO_MAXIOV)
  return (EINVAL);
 iov = mallocarray(ri.ri_data_len, sizeof(struct iovec),
     M_SOCKET, M_WAITOK);
 user_iov = TO_PTR(ri.ri_data);
 for (i = 0; i < ri.ri_data_len; i++) {
  error = copyin(&user_iov[i], &iovobj, sizeof(iovobj));
  if (error != 0) {
   free(iov, M_SOCKET);
   return (error);
  }
  iov[i].iov_base = TO_PTR(iovobj.buf);
  iov[i].iov_len = iovobj.buf_len;
 }

 error = cloudabi_sock_recv(td, uap->sock, iov, ri.ri_data_len,
     TO_PTR(ri.ri_fds), ri.ri_fds_len, ri.ri_flags, &rdatalen,
     &rfdslen, &ro.ro_flags);
 free(iov, M_SOCKET);
 if (error != 0)
  return (error);

 ro.ro_datalen = rdatalen;
 ro.ro_fdslen = rfdslen;
 return (copyout(&ro, uap->out, sizeof(ro)));
}
