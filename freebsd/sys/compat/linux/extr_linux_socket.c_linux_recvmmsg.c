
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; } ;
struct thread {int* td_retval; } ;
struct msghdr {int msg_flags; } ;
struct linux_recvmmsg_args {int vlen; int flags; scalar_t__ timeout; int s; int msg; } ;
struct l_timespec {int dummy; } ;
struct l_mmsghdr {int msg_len; int msg_hdr; } ;
typedef int l_uint ;


 int LINUX_MSG_DONTWAIT ;
 int LINUX_MSG_WAITFORONE ;
 int MSG_OOB ;
 struct l_mmsghdr* PTRIN (int ) ;
 int copyin (scalar_t__,struct l_timespec*,int) ;
 int copyout (int*,int *,int) ;
 int getnanotime (struct timespec*) ;
 int linux_recvmsg_common (struct thread*,int ,int *,int,struct msghdr*) ;
 int linux_to_native_timespec (struct timespec*,struct l_timespec*) ;
 int timespecadd (struct timespec*,struct timespec*,struct timespec*) ;
 int timespecisset (struct timespec*) ;
 int timespecsub (struct timespec*,struct timespec*,struct timespec*) ;

int
linux_recvmmsg(struct thread *td, struct linux_recvmmsg_args *args)
{
 struct l_mmsghdr *msg;
 struct msghdr bsd_msg;
 struct l_timespec lts;
 struct timespec ts, tts;
 l_uint retval;
 int error, datagrams;

 if (args->timeout) {
  error = copyin(args->timeout, &lts, sizeof(struct l_timespec));
  if (error != 0)
   return (error);
  error = linux_to_native_timespec(&ts, &lts);
  if (error != 0)
   return (error);
  getnanotime(&tts);
  timespecadd(&tts, &ts, &tts);
 }

 msg = PTRIN(args->msg);
 datagrams = 0;
 while (datagrams < args->vlen) {
  error = linux_recvmsg_common(td, args->s, &msg->msg_hdr,
      args->flags & ~LINUX_MSG_WAITFORONE, &bsd_msg);
  if (error != 0)
   break;

  retval = td->td_retval[0];
  error = copyout(&retval, &msg->msg_len, sizeof(msg->msg_len));
  if (error != 0)
   break;
  ++msg;
  ++datagrams;




  if (args->flags & LINUX_MSG_WAITFORONE)
   args->flags |= LINUX_MSG_DONTWAIT;




  if (args->timeout) {
   getnanotime(&ts);
   timespecsub(&ts, &tts, &ts);
   if (!timespecisset(&ts) || ts.tv_sec > 0)
    break;
  }

  if (bsd_msg.msg_flags & MSG_OOB)
   break;
 }
 if (error == 0)
  td->td_retval[0] = datagrams;
 return (error);
}
