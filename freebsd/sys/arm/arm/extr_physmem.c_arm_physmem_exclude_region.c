
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef int uintmax_t ;
typedef int uint32_t ;


 scalar_t__ excnt ;
 int exregions ;
 scalar_t__ insert_region (int ,scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ nitems (int ) ;
 int panic (char*,int ,int ) ;
 scalar_t__ round_page (scalar_t__) ;
 scalar_t__ trunc_page (scalar_t__) ;

void
arm_physmem_exclude_region(vm_paddr_t pa, vm_size_t sz, uint32_t exflags)
{
 vm_offset_t adj;





 adj = pa - trunc_page(pa);
 pa = trunc_page(pa);
 sz = round_page(sz + adj);

 if (excnt >= nitems(exregions))
  panic("failed to exclude region %#jx-%#jx", (uintmax_t)pa,
      (uintmax_t)(pa + sz));
 excnt = insert_region(exregions, excnt, pa, sz, exflags);
}
