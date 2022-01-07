
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_mprotect_args {int prot; int len; int addr; } ;


 int PTROUT (int ) ;
 int linux_mprotect_common (struct thread*,int ,int ,int ) ;

int
linux_mprotect(struct thread *td, struct linux_mprotect_args *uap)
{

 return (linux_mprotect_common(td, PTROUT(uap->addr), uap->len, uap->prot));
}
