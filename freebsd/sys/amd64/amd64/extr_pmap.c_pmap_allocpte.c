
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef int vm_offset_t ;
struct rwlock {int dummy; } ;
typedef int pmap_t ;
typedef int pd_entry_t ;
struct TYPE_5__ {int ref_count; } ;


 int PG_FRAME ;
 int PG_PS ;
 TYPE_1__* PHYS_TO_VM_PAGE (int) ;
 TYPE_1__* _pmap_allocpte (int ,int ,struct rwlock**) ;
 int pmap_demote_pde_locked (int ,int*,int ,struct rwlock**) ;
 int* pmap_pde (int ,int ) ;
 int pmap_pde_pindex (int ) ;
 int pmap_valid_bit (int ) ;

__attribute__((used)) static vm_page_t
pmap_allocpte(pmap_t pmap, vm_offset_t va, struct rwlock **lockp)
{
 vm_pindex_t ptepindex;
 pd_entry_t *pd, PG_V;
 vm_page_t m;

 PG_V = pmap_valid_bit(pmap);




 ptepindex = pmap_pde_pindex(va);
retry:



 pd = pmap_pde(pmap, va);





 if (pd != ((void*)0) && (*pd & (PG_PS | PG_V)) == (PG_PS | PG_V)) {
  if (!pmap_demote_pde_locked(pmap, pd, va, lockp)) {




   pd = ((void*)0);
  }
 }





 if (pd != ((void*)0) && (*pd & PG_V) != 0) {
  m = PHYS_TO_VM_PAGE(*pd & PG_FRAME);
  m->ref_count++;
 } else {




  m = _pmap_allocpte(pmap, ptepindex, lockp);
  if (m == ((void*)0) && lockp != ((void*)0))
   goto retry;
 }
 return (m);
}
