
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int EINVAL ;
 int LINUX_PROT_GROWSDOWN ;
 int LINUX_PROT_GROWSUP ;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int kern_mprotect (struct thread*,uintptr_t,size_t,int) ;
 int linux_fixup_prot (struct thread*,int*) ;

int
linux_mprotect_common(struct thread *td, uintptr_t addr, size_t len, int prot)
{


 prot &= ~(LINUX_PROT_GROWSDOWN | LINUX_PROT_GROWSUP);
 if ((prot & ~(PROT_READ | PROT_WRITE | PROT_EXEC)) != 0)
  return (EINVAL);


 linux_fixup_prot(td, &prot);

 return (kern_mprotect(td, addr, len, prot));
}
