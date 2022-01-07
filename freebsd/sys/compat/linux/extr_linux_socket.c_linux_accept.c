
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_accept_args {int namelen; int addr; int s; } ;


 int linux_accept_common (struct thread*,int ,int ,int ,int ) ;

int
linux_accept(struct thread *td, struct linux_accept_args *args)
{

 return (linux_accept_common(td, args->s, args->addr,
     args->namelen, 0));
}
