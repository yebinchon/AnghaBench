
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct TYPE_2__ {scalar_t__ pv_kva; int pv_list; } ;
struct vm_page {TYPE_1__ md; } ;
struct pv_entry {scalar_t__ pv_pmap; scalar_t__ pv_va; } ;
typedef scalar_t__ pmap_t ;


 int RA_WLOCKED ;
 struct pv_entry* TAILQ_FIRST (int *) ;
 struct pv_entry* TAILQ_NEXT (struct pv_entry*,int ) ;
 int pmap_nuke_pv (struct vm_page*,scalar_t__,struct pv_entry*) ;
 int pv_list ;
 int pvh_global_lock ;
 int rw_assert (int *,int ) ;

__attribute__((used)) static struct pv_entry *
pmap_remove_pv(struct vm_page *pg, pmap_t pm, vm_offset_t va)
{
 struct pv_entry *pve;

 rw_assert(&pvh_global_lock, RA_WLOCKED);
 pve = TAILQ_FIRST(&pg->md.pv_list);

 while (pve) {
  if (pve->pv_pmap == pm && pve->pv_va == va) {
   pmap_nuke_pv(pg, pm, pve);
   break;
  }
  pve = TAILQ_NEXT(pve, pv_list);
 }

 if (pve == ((void*)0) && pg->md.pv_kva == va)
  pg->md.pv_kva = 0;

 return(pve);
}
