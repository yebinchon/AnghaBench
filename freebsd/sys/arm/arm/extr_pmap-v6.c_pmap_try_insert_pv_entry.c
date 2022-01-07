
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int vm_offset_t ;
typedef TYPE_3__* pv_entry_t ;
typedef int pmap_t ;
typedef int boolean_t ;
struct TYPE_9__ {int pv_va; } ;
struct TYPE_7__ {int pv_list; } ;
struct TYPE_8__ {TYPE_1__ md; } ;


 int FALSE ;
 int MA_OWNED ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 int RA_WLOCKED ;
 int TAILQ_INSERT_TAIL (int *,TYPE_3__*,int ) ;
 int TRUE ;
 TYPE_3__* get_pv_entry (int ,int ) ;
 scalar_t__ pv_entry_count ;
 scalar_t__ pv_entry_high_water ;
 int pv_next ;
 int pvh_global_lock ;
 int rw_assert (int *,int ) ;

__attribute__((used)) static boolean_t
pmap_try_insert_pv_entry(pmap_t pmap, vm_offset_t va, vm_page_t m)
{
 pv_entry_t pv;

 rw_assert(&pvh_global_lock, RA_WLOCKED);
 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 if (pv_entry_count < pv_entry_high_water &&
     (pv = get_pv_entry(pmap, TRUE)) != ((void*)0)) {
  pv->pv_va = va;
  TAILQ_INSERT_TAIL(&m->md.pv_list, pv, pv_next);
  return (TRUE);
 } else
  return (FALSE);
}
