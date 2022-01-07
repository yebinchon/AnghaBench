
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct msghdr {int dummy; } ;
struct linux_recvmsg_args {int flags; int msg; int s; } ;


 int PTRIN (int ) ;
 int linux_recvmsg_common (struct thread*,int ,int ,int ,struct msghdr*) ;

int
linux_recvmsg(struct thread *td, struct linux_recvmsg_args *args)
{
 struct msghdr bsd_msg;

 return (linux_recvmsg_common(td, args->s, PTRIN(args->msg),
     args->flags, &bsd_msg));
}
