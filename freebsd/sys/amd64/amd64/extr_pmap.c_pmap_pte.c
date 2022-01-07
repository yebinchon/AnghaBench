
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;


 int PG_PS ;
 int* pmap_pde (int ,int ) ;
 int* pmap_pde_to_pte (int*,int ) ;
 int pmap_valid_bit (int ) ;

__attribute__((used)) static __inline pt_entry_t *
pmap_pte(pmap_t pmap, vm_offset_t va)
{
 pd_entry_t *pde;
 pt_entry_t PG_V;

 PG_V = pmap_valid_bit(pmap);
 pde = pmap_pde(pmap, va);
 if (pde == ((void*)0) || (*pde & PG_V) == 0)
  return (((void*)0));
 if ((*pde & PG_PS) != 0)
  return ((pt_entry_t *)pde);
 return (pmap_pde_to_pte(pde, va));
}
