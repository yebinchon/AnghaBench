
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pml4_entry_t ;
typedef int pdp_entry_t ;


 int PG_FRAME ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 size_t pmap_pdpe_index (int ) ;

__attribute__((used)) static __inline pdp_entry_t *
pmap_pml4e_to_pdpe(pml4_entry_t *pml4e, vm_offset_t va)
{
 pdp_entry_t *pdpe;

 pdpe = (pdp_entry_t *)PHYS_TO_DMAP(*pml4e & PG_FRAME);
 return (&pdpe[pmap_pdpe_index(va)]);
}
