
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int uint64_t ;


 int AMD64_PG_NX ;
 int AMD64_PG_RW ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;

__attribute__((used)) static vm_prot_t
_amd64_entry_to_prot(uint64_t entry)
{
 vm_prot_t prot = VM_PROT_READ;

 if ((entry & AMD64_PG_RW) != 0)
  prot |= VM_PROT_WRITE;
 if ((entry & AMD64_PG_NX) == 0)
  prot |= VM_PROT_EXECUTE;
 return prot;
}
