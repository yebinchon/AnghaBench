
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef int pmap_t ;


 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int pmap_enter_quick_locked (int ,int ,int ,int ,int *) ;
 int pvh_global_lock ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;

void
pmap_enter_quick(pmap_t pmap, vm_offset_t va, vm_page_t m, vm_prot_t prot)
{

 rw_wlock(&pvh_global_lock);
 PMAP_LOCK(pmap);
 (void)pmap_enter_quick_locked(pmap, va, m, prot, ((void*)0));
 rw_wunlock(&pvh_global_lock);
 PMAP_UNLOCK(pmap);
}
