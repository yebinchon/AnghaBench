
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pml4_entry_t ;
typedef int pmap_t ;
typedef int pdp_entry_t ;


 int* pmap_pml4e (int ,int ) ;
 int * pmap_pml4e_to_pdpe (int*,int ) ;
 int pmap_valid_bit (int ) ;

__attribute__((used)) static __inline pdp_entry_t *
pmap_pdpe(pmap_t pmap, vm_offset_t va)
{
 pml4_entry_t *pml4e;
 pt_entry_t PG_V;

 PG_V = pmap_valid_bit(pmap);
 pml4e = pmap_pml4e(pmap, va);
 if ((*pml4e & PG_V) == 0)
  return (((void*)0));
 return (pmap_pml4e_to_pdpe(pml4e, va));
}
