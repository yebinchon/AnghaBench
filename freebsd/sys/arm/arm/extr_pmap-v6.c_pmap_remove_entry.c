
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_offset_t ;
struct md_page {int pv_list; } ;
typedef int pmap_t ;
struct TYPE_7__ {int pv_list; } ;
struct TYPE_6__ {int flags; TYPE_4__ md; } ;


 int PGA_WRITEABLE ;
 int PG_FICTITIOUS ;
 int RA_WLOCKED ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int VM_PAGE_TO_PHYS (TYPE_1__*) ;
 struct md_page* pa_to_pvh (int ) ;
 int pmap_pvh_free (TYPE_4__*,int ,int ) ;
 int pvh_global_lock ;
 int rw_assert (int *,int ) ;
 int vm_page_aflag_clear (TYPE_1__*,int ) ;

__attribute__((used)) static void
pmap_remove_entry(pmap_t pmap, vm_page_t m, vm_offset_t va)
{
 struct md_page *pvh;

 rw_assert(&pvh_global_lock, RA_WLOCKED);
 pmap_pvh_free(&m->md, pmap, va);
 if (TAILQ_EMPTY(&m->md.pv_list) && (m->flags & PG_FICTITIOUS) == 0) {
  pvh = pa_to_pvh(VM_PAGE_TO_PHYS(m));
  if (TAILQ_EMPTY(&pvh->pv_list))
   vm_page_aflag_clear(m, PGA_WRITEABLE);
 }
}
