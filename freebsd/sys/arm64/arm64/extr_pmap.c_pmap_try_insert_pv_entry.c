
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int vm_offset_t ;
struct rwlock {int dummy; } ;
typedef TYPE_3__* pv_entry_t ;
typedef int pmap_t ;
typedef int boolean_t ;
struct TYPE_10__ {int pv_va; } ;
struct TYPE_8__ {int pv_gen; int pv_list; } ;
struct TYPE_9__ {TYPE_1__ md; } ;


 int CHANGE_PV_LIST_LOCK_TO_VM_PAGE (struct rwlock**,TYPE_2__*) ;
 int FALSE ;
 int MA_OWNED ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_3__*,int ) ;
 int TRUE ;
 TYPE_3__* get_pv_entry (int ,int *) ;
 int pv_next ;

__attribute__((used)) static boolean_t
pmap_try_insert_pv_entry(pmap_t pmap, vm_offset_t va, vm_page_t m,
    struct rwlock **lockp)
{
 pv_entry_t pv;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);

 if ((pv = get_pv_entry(pmap, ((void*)0))) != ((void*)0)) {
  pv->pv_va = va;
  CHANGE_PV_LIST_LOCK_TO_VM_PAGE(lockp, m);
  TAILQ_INSERT_TAIL(&m->md.pv_list, pv, pv_next);
  m->md.pv_gen++;
  return (TRUE);
 } else
  return (FALSE);
}
