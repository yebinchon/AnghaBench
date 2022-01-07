
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int uint64_t ;


 int I386_PG_NX ;
 int I386_PG_RW ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;

__attribute__((used)) static vm_prot_t
_i386_entry_to_prot(uint64_t pte)
{
 vm_prot_t prot = VM_PROT_READ;


 if (pte & I386_PG_RW)
  prot |= VM_PROT_WRITE;
 if ((pte & I386_PG_NX) == 0)
  prot |= VM_PROT_EXECUTE;

 return prot;
}
