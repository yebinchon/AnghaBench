
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int riscv_pt_entry_t ;


 int RISCV_PTE_W ;
 int RISCV_PTE_X ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;

__attribute__((used)) static vm_prot_t
_riscv_entry_to_prot(riscv_pt_entry_t pte)
{
 vm_prot_t prot = VM_PROT_READ;

 if ((pte & RISCV_PTE_W) != 0)
  prot |= VM_PROT_WRITE;
 if ((pte & RISCV_PTE_X) != 0)
  prot |= VM_PROT_EXECUTE;
 return prot;
}
