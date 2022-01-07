
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* pmap_t ;
typedef int pd_entry_t ;
struct TYPE_6__ {scalar_t__ rt_root; } ;
struct TYPE_7__ {int pm_cookie; TYPE_1__ pm_root; int pm_l0_paddr; int * pm_l0; int pm_stats; } ;


 int ASID_RESERVED_FOR_PID_0 ;
 int COOKIE_FROM (int ,int ) ;
 int INT_MIN ;
 int PCPU_SET (int ,TYPE_2__*) ;
 scalar_t__ PHYS_TO_DMAP (int ) ;
 int PMAP_LOCK_INIT (TYPE_2__*) ;
 int READ_SPECIALREG (int ) ;
 int bzero (int *,int) ;
 int curpmap ;
 int ttbr0_el1 ;

void
pmap_pinit0(pmap_t pmap)
{

 PMAP_LOCK_INIT(pmap);
 bzero(&pmap->pm_stats, sizeof(pmap->pm_stats));
 pmap->pm_l0_paddr = READ_SPECIALREG(ttbr0_el1);
 pmap->pm_l0 = (pd_entry_t *)PHYS_TO_DMAP(pmap->pm_l0_paddr);
 pmap->pm_root.rt_root = 0;
 pmap->pm_cookie = COOKIE_FROM(ASID_RESERVED_FOR_PID_0, INT_MIN);

 PCPU_SET(curpmap, pmap);
}
