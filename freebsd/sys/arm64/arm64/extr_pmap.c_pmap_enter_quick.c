
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_page_t ;
typedef int vm_offset_t ;
struct rwlock {int dummy; } ;
typedef int pmap_t ;


 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int pmap_enter_quick_locked (int ,int ,int ,int ,int *,struct rwlock**) ;
 int rw_wunlock (struct rwlock*) ;

void
pmap_enter_quick(pmap_t pmap, vm_offset_t va, vm_page_t m, vm_prot_t prot)
{
 struct rwlock *lock;

 lock = ((void*)0);
 PMAP_LOCK(pmap);
 (void)pmap_enter_quick_locked(pmap, va, m, prot, ((void*)0), &lock);
 if (lock != ((void*)0))
  rw_wunlock(lock);
 PMAP_UNLOCK(pmap);
}
