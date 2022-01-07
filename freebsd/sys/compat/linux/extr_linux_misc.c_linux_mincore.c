
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_mincore_args {int start; int vec; int len; } ;


 int EINVAL ;
 int PAGE_MASK ;
 int kern_mincore (struct thread*,int,int ,int ) ;

int
linux_mincore(struct thread *td, struct linux_mincore_args *args)
{


 if (args->start & PAGE_MASK)
  return (EINVAL);
 return (kern_mincore(td, args->start, args->len, args->vec));
}
