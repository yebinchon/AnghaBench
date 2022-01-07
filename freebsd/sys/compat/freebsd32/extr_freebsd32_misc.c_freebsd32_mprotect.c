
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct freebsd32_mprotect_args {int prot; int len; int addr; } ;


 int PROT_EXEC ;
 int PROT_READ ;
 scalar_t__ PTRIN (int ) ;
 scalar_t__ i386_read_exec ;
 int kern_mprotect (struct thread*,uintptr_t,int ,int) ;

int
freebsd32_mprotect(struct thread *td, struct freebsd32_mprotect_args *uap)
{
 int prot;

 prot = uap->prot;

 if (i386_read_exec && (prot & PROT_READ) != 0)
  prot |= PROT_EXEC;

 return (kern_mprotect(td, (uintptr_t)PTRIN(uap->addr), uap->len,
     prot));
}
