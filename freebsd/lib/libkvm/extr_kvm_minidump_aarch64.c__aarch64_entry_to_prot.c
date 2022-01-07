
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int aarch64_pte_t ;


 int AARCH64_ATTR_AP (int ) ;
 int AARCH64_ATTR_AP_RO ;
 int AARCH64_ATTR_XN ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;

__attribute__((used)) static vm_prot_t
_aarch64_entry_to_prot(aarch64_pte_t pte)
{
 vm_prot_t prot = VM_PROT_READ;


 if ((pte & AARCH64_ATTR_AP(AARCH64_ATTR_AP_RO)) == 0)
  prot |= VM_PROT_WRITE;
 if ((pte & AARCH64_ATTR_XN) == 0)
  prot |= VM_PROT_EXECUTE;
 return prot;
}
