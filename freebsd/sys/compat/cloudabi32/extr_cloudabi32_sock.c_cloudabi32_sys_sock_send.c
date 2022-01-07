
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct thread {int dummy; } ;
struct iovec {int iov_len; void* iov_base; } ;
struct cloudabi32_sys_sock_send_args {int out; int sock; TYPE_2__ const* in; } ;
typedef int so ;
typedef int si ;
typedef int iovobj ;
struct TYPE_7__ {size_t so_datalen; } ;
typedef TYPE_1__ cloudabi32_send_out_t ;
struct TYPE_8__ {size_t si_data_len; int si_fds_len; int si_fds; int buf_len; int buf; int si_data; } ;
typedef TYPE_2__ cloudabi32_send_in_t ;
typedef TYPE_2__ cloudabi32_ciovec_t ;


 int EINVAL ;
 int M_SOCKET ;
 int M_WAITOK ;
 void* TO_PTR (int ) ;
 size_t UIO_MAXIOV ;
 int cloudabi_sock_send (struct thread*,int ,struct iovec*,size_t,void*,int ,size_t*) ;
 int copyin (TYPE_2__ const*,TYPE_2__*,int) ;
 int copyout (TYPE_1__*,int ,int) ;
 int free (struct iovec*,int ) ;
 struct iovec* mallocarray (size_t,int,int ,int ) ;

int
cloudabi32_sys_sock_send(struct thread *td,
    struct cloudabi32_sys_sock_send_args *uap)
{
 cloudabi32_send_in_t si;
 cloudabi32_send_out_t so = {};
 cloudabi32_ciovec_t iovobj;
 struct iovec *iov;
 const cloudabi32_ciovec_t *user_iov;
 size_t datalen, i;
 int error;

 error = copyin(uap->in, &si, sizeof(si));
 if (error != 0)
  return (error);


 if (si.si_data_len > UIO_MAXIOV)
  return (EINVAL);
 iov = mallocarray(si.si_data_len, sizeof(struct iovec),
     M_SOCKET, M_WAITOK);
 user_iov = TO_PTR(si.si_data);
 for (i = 0; i < si.si_data_len; i++) {
  error = copyin(&user_iov[i], &iovobj, sizeof(iovobj));
  if (error != 0) {
   free(iov, M_SOCKET);
   return (error);
  }
  iov[i].iov_base = TO_PTR(iovobj.buf);
  iov[i].iov_len = iovobj.buf_len;
 }

 error = cloudabi_sock_send(td, uap->sock, iov, si.si_data_len,
     TO_PTR(si.si_fds), si.si_fds_len, &datalen);
 free(iov, M_SOCKET);
 if (error != 0)
  return (error);

 so.so_datalen = datalen;
 return (copyout(&so, uap->out, sizeof(so)));
}
