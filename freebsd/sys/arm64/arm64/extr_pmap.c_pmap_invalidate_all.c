
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* pmap_t ;
struct TYPE_4__ {int pm_cookie; } ;


 int ASID_TO_OPERAND (int ) ;
 int COOKIE_TO_ASID (int ) ;
 int dsb (int ) ;
 int isb () ;
 int ish ;
 int ishst ;
 TYPE_1__* kernel_pmap ;
 int sched_pin () ;
 int sched_unpin () ;

__attribute__((used)) static __inline void
pmap_invalidate_all(pmap_t pmap)
{
 uint64_t r;

 sched_pin();
 dsb(ishst);
 if (pmap == kernel_pmap) {
  __asm __volatile("tlbi vmalle1is");
 } else {
  r = ASID_TO_OPERAND(COOKIE_TO_ASID(pmap->pm_cookie));
  __asm __volatile("tlbi aside1is, %0" : : "r" (r));
 }
 dsb(ish);
 isb();
 sched_unpin();
}
