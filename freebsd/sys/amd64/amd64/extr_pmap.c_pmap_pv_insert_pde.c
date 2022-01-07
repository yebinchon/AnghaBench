
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int u_int ;
struct rwlock {int dummy; } ;
struct md_page {int pv_gen; int pv_list; } ;
typedef TYPE_1__* pv_entry_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;
struct TYPE_4__ {int pv_va; } ;


 int CHANGE_PV_LIST_LOCK_TO_PHYS (struct rwlock**,int) ;
 int MA_OWNED ;
 int PG_PS_FRAME ;
 int PMAP_ENTER_NORECLAIM ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 TYPE_1__* get_pv_entry (int ,struct rwlock**) ;
 struct md_page* pa_to_pvh (int) ;
 int pv_next ;

__attribute__((used)) static bool
pmap_pv_insert_pde(pmap_t pmap, vm_offset_t va, pd_entry_t pde, u_int flags,
    struct rwlock **lockp)
{
 struct md_page *pvh;
 pv_entry_t pv;
 vm_paddr_t pa;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);

 if ((pv = get_pv_entry(pmap, (flags & PMAP_ENTER_NORECLAIM) != 0 ?
     ((void*)0) : lockp)) == ((void*)0))
  return (0);
 pv->pv_va = va;
 pa = pde & PG_PS_FRAME;
 CHANGE_PV_LIST_LOCK_TO_PHYS(lockp, pa);
 pvh = pa_to_pvh(pa);
 TAILQ_INSERT_TAIL(&pvh->pv_list, pv, pv_next);
 pvh->pv_gen++;
 return (1);
}
