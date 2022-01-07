
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef int vm_offset_t ;
struct rwlock {int dummy; } ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;
struct TYPE_5__ {int ref_count; } ;


 int ATTR_MASK ;
 int KASSERT (int,char*) ;
 TYPE_1__* PHYS_TO_VM_PAGE (int) ;
 TYPE_1__* _pmap_alloc_l3 (int ,int ,struct rwlock**) ;
 int panic (char*,int) ;
 int* pmap_l0_to_l1 (int*,int ) ;
 int* pmap_l1_to_l2 (int*,int ) ;
 int pmap_l2_pindex (int ) ;
 int pmap_load (int*) ;
 int* pmap_pde (int ,int ,int*) ;

__attribute__((used)) static vm_page_t
pmap_alloc_l3(pmap_t pmap, vm_offset_t va, struct rwlock **lockp)
{
 vm_pindex_t ptepindex;
 pd_entry_t *pde, tpde;



 vm_page_t m;
 int lvl;




 ptepindex = pmap_l2_pindex(va);
retry:



 pde = pmap_pde(pmap, va, &lvl);






 switch (lvl) {
 case -1:
  break;
 case 0:





  break;
 case 1:





  break;
 case 2:
  tpde = pmap_load(pde);
  if (tpde != 0) {
   m = PHYS_TO_VM_PAGE(tpde & ~ATTR_MASK);
   m->ref_count++;
   return (m);
  }
  break;
 default:
  panic("pmap_alloc_l3: Invalid level %d", lvl);
 }




 m = _pmap_alloc_l3(pmap, ptepindex, lockp);
 if (m == ((void*)0) && lockp != ((void*)0))
  goto retry;

 return (m);
}
