
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
struct TYPE_8__ {int pm_cookie; } ;


 int COOKIE_TO_EPOCH (int ) ;
 int KASSERT (int,char*) ;
 TYPE_1__* PCPU_GET (int ) ;
 int PCPU_SET (int ,TYPE_1__*) ;
 int asid_epoch ;
 int bcast_tlbi_workaround ;
 int curpmap ;
 int dsb (int ) ;
 int invalidate_local_icache () ;
 int ish ;
 TYPE_1__* kernel_pmap ;
 int pmap_alloc_asid (TYPE_1__*) ;
 int pmap_to_ttbr0 (TYPE_1__*) ;
 int set_ttbr0 (int ) ;

__attribute__((used)) static bool
pmap_activate_int(pmap_t pmap)
{
 int epoch;

 KASSERT(PCPU_GET(curpmap) != ((void*)0), ("no active pmap"));
 KASSERT(pmap != kernel_pmap, ("kernel pmap activation"));
 if (pmap == PCPU_GET(curpmap))
  return (0);





 PCPU_SET(curpmap, pmap);
 dsb(ish);
 epoch = COOKIE_TO_EPOCH(pmap->pm_cookie);
 if (epoch >= 0 && epoch != asid_epoch)
  pmap_alloc_asid(pmap);

 set_ttbr0(pmap_to_ttbr0(pmap));
 if (PCPU_GET(bcast_tlbi_workaround) != 0)
  invalidate_local_icache();
 return (1);
}
