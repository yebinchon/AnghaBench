
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct msghdr {int msg_iovlen; scalar_t__ msg_namelen; int msg_flags; int * msg_control; struct iovec* msg_iov; void* msg_name; } ;
struct iovec {int iov_len; void* iov_base; } ;
struct freebsd32_recvfrom_args {scalar_t__ fromlenaddr; int s; int flags; int len; scalar_t__ buf; scalar_t__ from; } ;


 void* PTRIN (scalar_t__) ;
 int UIO_USERSPACE ;
 int copyin (void*,scalar_t__*,int) ;
 int copyout (scalar_t__*,void*,int) ;
 int kern_recvit (struct thread*,int ,struct msghdr*,int ,int *) ;

int
freebsd32_recvfrom(struct thread *td,
     struct freebsd32_recvfrom_args *uap)
{
 struct msghdr msg;
 struct iovec aiov;
 int error;

 if (uap->fromlenaddr) {
  error = copyin(PTRIN(uap->fromlenaddr), &msg.msg_namelen,
      sizeof(msg.msg_namelen));
  if (error)
   return (error);
 } else {
  msg.msg_namelen = 0;
 }

 msg.msg_name = PTRIN(uap->from);
 msg.msg_iov = &aiov;
 msg.msg_iovlen = 1;
 aiov.iov_base = PTRIN(uap->buf);
 aiov.iov_len = uap->len;
 msg.msg_control = ((void*)0);
 msg.msg_flags = uap->flags;
 error = kern_recvit(td, uap->s, &msg, UIO_USERSPACE, ((void*)0));
 if (error == 0 && uap->fromlenaddr)
  error = copyout(&msg.msg_namelen, PTRIN(uap->fromlenaddr),
      sizeof (msg.msg_namelen));
 return (error);
}
