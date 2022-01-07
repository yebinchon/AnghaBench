
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cloudabi_sys_mem_protect_args {int mapping_len; scalar_t__ mapping; int prot; } ;


 int convert_mprot (int ,int*) ;
 int kern_mprotect (struct thread*,uintptr_t,int ,int) ;

int
cloudabi_sys_mem_protect(struct thread *td,
    struct cloudabi_sys_mem_protect_args *uap)
{
 int error, prot;


 error = convert_mprot(uap->prot, &prot);
 if (error != 0)
  return (error);

 return (kern_mprotect(td, (uintptr_t)uap->mapping, uap->mapping_len,
     prot));
}
