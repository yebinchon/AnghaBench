
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;


 int kernel_pmap ;
 int pmap_extract_locked (int ,int ) ;

vm_paddr_t
pmap_kextract(vm_offset_t va)
{

 return (pmap_extract_locked(kernel_pmap, va));
}
