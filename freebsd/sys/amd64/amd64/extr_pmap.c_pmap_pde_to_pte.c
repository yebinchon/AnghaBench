
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pd_entry_t ;


 int PG_FRAME ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 size_t pmap_pte_index (int ) ;

__attribute__((used)) static __inline pt_entry_t *
pmap_pde_to_pte(pd_entry_t *pde, vm_offset_t va)
{
 pt_entry_t *pte;

 pte = (pt_entry_t *)PHYS_TO_DMAP(*pde & PG_FRAME);
 return (&pte[pmap_pte_index(va)]);
}
