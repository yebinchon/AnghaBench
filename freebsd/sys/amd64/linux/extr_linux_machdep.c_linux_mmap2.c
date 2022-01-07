
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_mmap2_args {int pgoff; int fd; int flags; int prot; int len; int addr; } ;


 int PTROUT (int ) ;
 int linux_mmap_common (struct thread*,int ,int ,int ,int ,int ,int ) ;

int
linux_mmap2(struct thread *td, struct linux_mmap2_args *args)
{

 return (linux_mmap_common(td, PTROUT(args->addr), args->len, args->prot,
  args->flags, args->fd, args->pgoff));
}
