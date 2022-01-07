
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef int vm_offset_t ;


 int PHYS_TO_DMAP (scalar_t__) ;
 scalar_t__ dmaplimit ;

vm_offset_t
efi_phys_to_kva(vm_paddr_t paddr)
{

 if (paddr >= dmaplimit)
  return (0);
 return (PHYS_TO_DMAP(paddr));
}
