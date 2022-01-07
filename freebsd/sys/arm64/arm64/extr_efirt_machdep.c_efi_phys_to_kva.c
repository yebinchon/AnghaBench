
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;


 int PHYS_IN_DMAP (int ) ;
 int PHYS_TO_DMAP (int ) ;

vm_offset_t
efi_phys_to_kva(vm_paddr_t paddr)
{

 if (!PHYS_IN_DMAP(paddr))
  return (0);
 return (PHYS_TO_DMAP(paddr));
}
