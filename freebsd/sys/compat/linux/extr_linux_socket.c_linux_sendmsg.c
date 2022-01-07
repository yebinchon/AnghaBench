
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_sendmsg_args {int flags; int msg; int s; } ;


 int PTRIN (int ) ;
 int linux_sendmsg_common (struct thread*,int ,int ,int ) ;

int
linux_sendmsg(struct thread *td, struct linux_sendmsg_args *args)
{

 return (linux_sendmsg_common(td, args->s, PTRIN(args->msg),
     args->flags));
}
