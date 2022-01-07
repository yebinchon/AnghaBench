
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_shutdown_args {int how; int s; } ;


 int kern_shutdown (struct thread*,int ,int ) ;

int
linux_shutdown(struct thread *td, struct linux_shutdown_args *args)
{

 return (kern_shutdown(td, args->s, args->how));
}
