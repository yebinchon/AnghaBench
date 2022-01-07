
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int* td_retval; } ;
struct linux_sendmmsg_args {int vlen; int flags; int s; int msg; } ;
struct l_mmsghdr {int msg_len; int msg_hdr; } ;
typedef int l_uint ;


 struct l_mmsghdr* PTRIN (int ) ;
 int UIO_MAXIOV ;
 int copyout (int*,int *,int) ;
 int linux_sendmsg_common (struct thread*,int ,int *,int ) ;

int
linux_sendmmsg(struct thread *td, struct linux_sendmmsg_args *args)
{
 struct l_mmsghdr *msg;
 l_uint retval;
 int error, datagrams;

 if (args->vlen > UIO_MAXIOV)
  args->vlen = UIO_MAXIOV;

 msg = PTRIN(args->msg);
 datagrams = 0;
 while (datagrams < args->vlen) {
  error = linux_sendmsg_common(td, args->s, &msg->msg_hdr,
      args->flags);
  if (error != 0)
   break;

  retval = td->td_retval[0];
  error = copyout(&retval, &msg->msg_len, sizeof(msg->msg_len));
  if (error != 0)
   break;
  ++msg;
  ++datagrams;
 }
 if (error == 0)
  td->td_retval[0] = datagrams;
 return (error);
}
