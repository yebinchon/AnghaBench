
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct rwlock {int dummy; } ;
typedef int pt_entry_t ;
typedef int pmap_t ;


 int * pmap_demote_l2_locked (int ,int *,int ,struct rwlock**) ;
 int rw_wunlock (struct rwlock*) ;

__attribute__((used)) static pt_entry_t *
pmap_demote_l2(pmap_t pmap, pt_entry_t *l2, vm_offset_t va)
{
 struct rwlock *lock;
 pt_entry_t *l3;

 lock = ((void*)0);
 l3 = pmap_demote_l2_locked(pmap, l2, va, &lock);
 if (lock != ((void*)0))
  rw_wunlock(lock);
 return (l3);
}
