
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_listen_args {int backlog; int s; } ;


 int kern_listen (struct thread*,int ,int ) ;

int
linux_listen(struct thread *td, struct linux_listen_args *args)
{

 return (kern_listen(td, args->s, args->backlog));
}
