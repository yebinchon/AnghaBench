
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct msghdr {int msg_iovlen; scalar_t__ msg_flags; int * msg_control; struct iovec* msg_iov; int msg_namelen; void* msg_name; } ;
struct linux_sendto_args {int flags; int s; int len; int msg; int tolen; int to; } ;
struct iovec {int iov_len; void* iov_base; } ;


 void* PTRIN (int ) ;
 int UIO_USERSPACE ;
 scalar_t__ linux_check_hdrincl (struct thread*,int ) ;
 int linux_sendit (struct thread*,int ,struct msghdr*,int ,int *,int ) ;
 int linux_sendto_hdrincl (struct thread*,struct linux_sendto_args*) ;

int
linux_sendto(struct thread *td, struct linux_sendto_args *args)
{
 struct msghdr msg;
 struct iovec aiov;

 if (linux_check_hdrincl(td, args->s) == 0)

  return (linux_sendto_hdrincl(td, args));

 msg.msg_name = PTRIN(args->to);
 msg.msg_namelen = args->tolen;
 msg.msg_iov = &aiov;
 msg.msg_iovlen = 1;
 msg.msg_control = ((void*)0);
 msg.msg_flags = 0;
 aiov.iov_base = PTRIN(args->msg);
 aiov.iov_len = args->len;
 return (linux_sendit(td, args->s, &msg, args->flags, ((void*)0),
     UIO_USERSPACE));
}
