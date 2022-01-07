
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_mmap2_args {int pgoff; int fd; int flags; int prot; int len; int addr; } ;


 int LIN_SDT_PROBE0 (int ,int (*) (struct thread*,struct linux_mmap2_args*),int ) ;
 int PTROUT (int ) ;
 int linux_mmap_common (struct thread*,int ,int ,int ,int ,int ,int ) ;
 int machdep ;
 int todo ;

int
linux_mmap2(struct thread *td, struct linux_mmap2_args *uap)
{

 LIN_SDT_PROBE0(machdep, linux_mmap2, todo);
 return (linux_mmap_common(td, PTROUT(uap->addr), uap->len, uap->prot,
     uap->flags, uap->fd, uap->pgoff));
}
