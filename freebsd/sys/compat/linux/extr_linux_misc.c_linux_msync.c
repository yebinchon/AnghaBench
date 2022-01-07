
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_msync_args {int fl; int len; int addr; } ;


 int LINUX_MS_SYNC ;
 int kern_msync (struct thread*,int ,int ,int) ;

int
linux_msync(struct thread *td, struct linux_msync_args *args)
{

 return (kern_msync(td, args->addr, args->len,
     args->fl & ~LINUX_MS_SYNC));
}
