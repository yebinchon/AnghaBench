
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef int pdp_entry_t ;
typedef int pd_entry_t ;


 int* pmap_pdpe (int ,int ) ;
 int * pmap_pdpe_to_pde (int*,int ) ;
 int pmap_valid_bit (int ) ;

__attribute__((used)) static __inline pd_entry_t *
pmap_pde(pmap_t pmap, vm_offset_t va)
{
 pdp_entry_t *pdpe;
 pt_entry_t PG_V;

 PG_V = pmap_valid_bit(pmap);
 pdpe = pmap_pdpe(pmap, va);
 if (pdpe == ((void*)0) || (*pdpe & PG_V) == 0)
  return (((void*)0));
 return (pmap_pdpe_to_pde(pdpe, va));
}
