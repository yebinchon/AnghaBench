
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pdp_entry_t ;
typedef int pd_entry_t ;


 int PG_FRAME ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 size_t pmap_pde_index (int ) ;

__attribute__((used)) static __inline pd_entry_t *
pmap_pdpe_to_pde(pdp_entry_t *pdpe, vm_offset_t va)
{
 pd_entry_t *pde;

 pde = (pd_entry_t *)PHYS_TO_DMAP(*pdpe & PG_FRAME);
 return (&pde[pmap_pde_index(va)]);
}
