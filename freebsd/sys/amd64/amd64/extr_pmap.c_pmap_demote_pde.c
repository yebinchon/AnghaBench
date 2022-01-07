
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct rwlock {int dummy; } ;
typedef int pmap_t ;
typedef int pd_entry_t ;
typedef int boolean_t ;


 int pmap_demote_pde_locked (int ,int *,int ,struct rwlock**) ;
 int rw_wunlock (struct rwlock*) ;

__attribute__((used)) static boolean_t
pmap_demote_pde(pmap_t pmap, pd_entry_t *pde, vm_offset_t va)
{
 struct rwlock *lock;
 boolean_t rv;

 lock = ((void*)0);
 rv = pmap_demote_pde_locked(pmap, pde, va, &lock);
 if (lock != ((void*)0))
  rw_wunlock(lock);
 return (rv);
}
