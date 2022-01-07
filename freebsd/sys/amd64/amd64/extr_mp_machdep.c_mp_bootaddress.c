
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;


 scalar_t__ AP_BOOTPT_SZ ;
 int alloc_ap_trampoline (scalar_t__*,unsigned int*) ;
 scalar_t__ boot_address ;
 scalar_t__ bootverbose ;
 int is_kernel_paddr (scalar_t__) ;
 scalar_t__ is_mpboot_good (scalar_t__,scalar_t__) ;
 int memmove (scalar_t__*,scalar_t__*,int) ;
 int mptramp_pagetables ;
 int printf (char*,int) ;
 scalar_t__ round_page (scalar_t__) ;
 scalar_t__ trunc_page (scalar_t__) ;

void
mp_bootaddress(vm_paddr_t *physmap, unsigned int *physmap_idx)
{
 vm_paddr_t start, end;
 unsigned int i;
 bool allocated;

 alloc_ap_trampoline(physmap, physmap_idx);
 allocated = 0;
 for (i = *physmap_idx; i <= *physmap_idx; i -= 2) {




  start = round_page(physmap[i]);
  end = start + AP_BOOTPT_SZ;
  if (start < end && end <= physmap[i + 1] &&
      is_mpboot_good(start, end) &&
      !is_kernel_paddr(start) && !is_kernel_paddr(end - 1)) {
   allocated = 1;
   physmap[i] = end;
   break;
  }





  end = trunc_page(physmap[i + 1]);
  start = end - AP_BOOTPT_SZ;
  if (start < end && start >= physmap[i] &&
      is_mpboot_good(start, end) &&
      !is_kernel_paddr(start) && !is_kernel_paddr(end - 1)) {
   allocated = 1;
   physmap[i + 1] = start;
   break;
  }
 }
 if (allocated) {
  mptramp_pagetables = start;
  if (physmap[i] == physmap[i + 1] && *physmap_idx != 0) {
   memmove(&physmap[i], &physmap[i + 2],
       sizeof(*physmap) * (*physmap_idx - i + 2));
   *physmap_idx -= 2;
  }
 } else {
  mptramp_pagetables = trunc_page(boot_address) - AP_BOOTPT_SZ;
  if (bootverbose)
   printf(
"Cannot find enough space for the initial AP page tables, placing them at %#x",
       mptramp_pagetables);
 }
}
