
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int u_short ;
struct l2_dtable {scalar_t__ l2_occupancy; struct l2_bucket* l2_bucket; } ;
struct l2_bucket {int l2b_l1idx; struct l2_dtable* l2b_kva; int l2b_phys; } ;
typedef struct l2_dtable pt_entry_t ;
typedef TYPE_1__* pmap_t ;
struct TYPE_6__ {struct l2_dtable** pm_l2; } ;


 int L1_IDX (int ) ;
 size_t L2_BUCKET (int ) ;
 size_t L2_IDX (int ) ;
 int M_NOWAIT ;
 int PMAP_ASSERT_LOCKED (TYPE_1__*) ;
 int PMAP_LOCK (TYPE_1__*) ;
 int PMAP_UNLOCK (TYPE_1__*) ;
 int RA_WLOCKED ;
 int bzero (struct l2_dtable*,int) ;
 int l2table_zone ;
 int l2zone ;
 int pvh_global_lock ;
 int rw_assert (int *,int ) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 struct l2_dtable* uma_zalloc (int ,int ) ;
 int uma_zfree (int ,struct l2_dtable*) ;
 int vtophys (struct l2_dtable*) ;

__attribute__((used)) static struct l2_bucket *
pmap_alloc_l2_bucket(pmap_t pm, vm_offset_t va)
{
 struct l2_dtable *l2;
 struct l2_bucket *l2b;
 u_short l1idx;

 l1idx = L1_IDX(va);

 PMAP_ASSERT_LOCKED(pm);
 rw_assert(&pvh_global_lock, RA_WLOCKED);
 if ((l2 = pm->pm_l2[L2_IDX(l1idx)]) == ((void*)0)) {





  PMAP_UNLOCK(pm);
  rw_wunlock(&pvh_global_lock);
  if ((l2 = uma_zalloc(l2table_zone, M_NOWAIT)) == ((void*)0)) {
   rw_wlock(&pvh_global_lock);
   PMAP_LOCK(pm);
   return (((void*)0));
  }
  rw_wlock(&pvh_global_lock);
  PMAP_LOCK(pm);
  if (pm->pm_l2[L2_IDX(l1idx)] != ((void*)0)) {




   uma_zfree(l2table_zone, l2);
   l2 = pm->pm_l2[L2_IDX(l1idx)];
  } else {
   bzero(l2, sizeof(*l2));



   pm->pm_l2[L2_IDX(l1idx)] = l2;
  }
 }

 l2b = &l2->l2_bucket[L2_BUCKET(l1idx)];




 if (l2b->l2b_kva == ((void*)0)) {
  pt_entry_t *ptep;





  l2->l2_occupancy++;
  PMAP_UNLOCK(pm);
  rw_wunlock(&pvh_global_lock);
  ptep = uma_zalloc(l2zone, M_NOWAIT);
  rw_wlock(&pvh_global_lock);
  PMAP_LOCK(pm);
  if (l2b->l2b_kva != ((void*)0)) {

   l2->l2_occupancy--;
   uma_zfree(l2zone, ptep);
   return (l2b);
  }
  l2b->l2b_phys = vtophys(ptep);
  if (ptep == ((void*)0)) {





   l2->l2_occupancy--;
   if (l2->l2_occupancy == 0) {
    pm->pm_l2[L2_IDX(l1idx)] = ((void*)0);
    uma_zfree(l2table_zone, l2);
   }
   return (((void*)0));
  }

  l2b->l2b_kva = ptep;
  l2b->l2b_l1idx = l1idx;
 }

 return (l2b);
}
