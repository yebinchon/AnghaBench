
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint64_t ;


 int MAX_PHYS_ADDR ;
 int PAGE_SIZE ;
 scalar_t__ hwcnt ;
 int hwregions ;
 scalar_t__ insert_region (int ,scalar_t__,int,int,int ) ;
 scalar_t__ nitems (int ) ;
 int round_page (int) ;
 int trunc_page (int) ;

void
arm_physmem_hardware_region(uint64_t pa, uint64_t sz)
{
 vm_offset_t adj;





 if (pa == 0) {
  if (sz <= PAGE_SIZE)
   return;
  pa = PAGE_SIZE;
  sz -= PAGE_SIZE;
 } else if (pa > MAX_PHYS_ADDR) {

  return;
 }
 if ((pa + sz) > (MAX_PHYS_ADDR - 1024 * 1024)) {
  sz = MAX_PHYS_ADDR - pa + 1;
  if (sz <= 1024 * 1024)
   return;
  sz -= 1024 * 1024;
 }





 adj = round_page(pa) - pa;
 pa = round_page(pa);
 sz = trunc_page(sz - adj);

 if (sz > 0 && hwcnt < nitems(hwregions))
  hwcnt = insert_region(hwregions, hwcnt, pa, sz, 0);
}
