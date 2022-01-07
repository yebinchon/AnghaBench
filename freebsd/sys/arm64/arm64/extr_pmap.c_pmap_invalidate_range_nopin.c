
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uint64_t ;
typedef TYPE_1__* pmap_t ;
struct TYPE_4__ {int pm_cookie; } ;


 int ASID_TO_OPERAND (int ) ;
 int COOKIE_TO_ASID (int ) ;
 int atop (int ) ;
 int dsb (int ) ;
 int isb () ;
 int ish ;
 int ishst ;
 TYPE_1__* kernel_pmap ;

__attribute__((used)) static __inline void
pmap_invalidate_range_nopin(pmap_t pmap, vm_offset_t sva, vm_offset_t eva)
{
 uint64_t end, r, start;

 dsb(ishst);
 if (pmap == kernel_pmap) {
  start = atop(sva);
  end = atop(eva);
  for (r = start; r < end; r++)
   __asm __volatile("tlbi vaae1is, %0" : : "r" (r));
 } else {
  start = end = ASID_TO_OPERAND(COOKIE_TO_ASID(pmap->pm_cookie));
  start |= atop(sva);
  end |= atop(eva);
  for (r = start; r < end; r++)
   __asm __volatile("tlbi vae1is, %0" : : "r" (r));
 }
 dsb(ish);
 isb();
}
