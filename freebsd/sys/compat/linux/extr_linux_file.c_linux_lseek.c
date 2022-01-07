
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_lseek_args {int whence; int off; int fdes; } ;


 int kern_lseek (struct thread*,int ,int ,int ) ;

int
linux_lseek(struct thread *td, struct linux_lseek_args *args)
{

 return (kern_lseek(td, args->fdes, args->off, args->whence));
}
