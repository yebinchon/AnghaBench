
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef enum vm_paging_mode { ____Placeholder_vm_paging_mode } vm_paging_mode ;


 int CR0_PG ;
 int CR4_PAE ;
 int EFER_LME ;
 int PAGING_MODE_32 ;
 int PAGING_MODE_64 ;
 int PAGING_MODE_FLAT ;
 int PAGING_MODE_PAE ;

__attribute__((used)) static enum vm_paging_mode
svm_paging_mode(uint64_t cr0, uint64_t cr4, uint64_t efer)
{

 if ((cr0 & CR0_PG) == 0)
  return (PAGING_MODE_FLAT);
 if ((cr4 & CR4_PAE) == 0)
  return (PAGING_MODE_32);
 if (efer & EFER_LME)
  return (PAGING_MODE_64);
 else
  return (PAGING_MODE_PAE);
}
