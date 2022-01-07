
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
typedef int pdp_entry_t ;
struct TYPE_5__ {int ref_count; } ;


 int NPDPEPGSHIFT ;
 scalar_t__ NUPDE ;
 int PG_FRAME ;
 TYPE_1__* PHYS_TO_VM_PAGE (int) ;
 TYPE_1__* _pmap_allocpte (int ,scalar_t__,struct rwlock**) ;
 int pmap_pde_pindex (int ) ;
 int* pmap_pdpe (int ,int ) ;
 int pmap_valid_bit (int ) ;

__attribute__((used)) static vm_page_t
pmap_allocpde(pmap_t pmap, vm_offset_t va, struct rwlock **lockp)
{
 vm_pindex_t pdpindex, ptepindex;
 pdp_entry_t *pdpe, PG_V;
 vm_page_t pdpg;

 PG_V = pmap_valid_bit(pmap);

retry:
 pdpe = pmap_pdpe(pmap, va);
 if (pdpe != ((void*)0) && (*pdpe & PG_V) != 0) {

  pdpg = PHYS_TO_VM_PAGE(*pdpe & PG_FRAME);
  pdpg->ref_count++;
 } else {

  ptepindex = pmap_pde_pindex(va);
  pdpindex = ptepindex >> NPDPEPGSHIFT;
  pdpg = _pmap_allocpte(pmap, NUPDE + pdpindex, lockp);
  if (pdpg == ((void*)0) && lockp != ((void*)0))
   goto retry;
 }
 return (pdpg);
}
