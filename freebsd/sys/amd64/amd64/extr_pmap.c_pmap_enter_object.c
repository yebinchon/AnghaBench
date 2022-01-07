
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef scalar_t__ vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef scalar_t__ vm_offset_t ;
struct rwlock {int dummy; } ;
typedef int pmap_t ;
struct TYPE_9__ {scalar_t__ pindex; int psind; int object; } ;


 scalar_t__ NBPDR ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ PDRMASK ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int VM_OBJECT_ASSERT_LOCKED (int ) ;
 int VM_PROT_EXECUTE ;
 scalar_t__ atop (scalar_t__) ;
 int listq ;
 scalar_t__ pmap_allow_2m_x_page (int ,int) ;
 scalar_t__ pmap_enter_2mpage (int ,scalar_t__,TYPE_1__*,int,struct rwlock**) ;
 TYPE_1__* pmap_enter_quick_locked (int ,scalar_t__,TYPE_1__*,int,TYPE_1__*,struct rwlock**) ;
 scalar_t__ pmap_ps_enabled (int ) ;
 scalar_t__ ptoa (scalar_t__) ;
 int rw_wunlock (struct rwlock*) ;

void
pmap_enter_object(pmap_t pmap, vm_offset_t start, vm_offset_t end,
    vm_page_t m_start, vm_prot_t prot)
{
 struct rwlock *lock;
 vm_offset_t va;
 vm_page_t m, mpte;
 vm_pindex_t diff, psize;

 VM_OBJECT_ASSERT_LOCKED(m_start->object);

 psize = atop(end - start);
 mpte = ((void*)0);
 m = m_start;
 lock = ((void*)0);
 PMAP_LOCK(pmap);
 while (m != ((void*)0) && (diff = m->pindex - m_start->pindex) < psize) {
  va = start + ptoa(diff);
  if ((va & PDRMASK) == 0 && va + NBPDR <= end &&
      m->psind == 1 && pmap_ps_enabled(pmap) &&
      pmap_allow_2m_x_page(pmap, (prot & VM_PROT_EXECUTE) != 0) &&
      pmap_enter_2mpage(pmap, va, m, prot, &lock))
   m = &m[NBPDR / PAGE_SIZE - 1];
  else
   mpte = pmap_enter_quick_locked(pmap, va, m, prot,
       mpte, &lock);
  m = TAILQ_NEXT(m, listq);
 }
 if (lock != ((void*)0))
  rw_wunlock(lock);
 PMAP_UNLOCK(pmap);
}
