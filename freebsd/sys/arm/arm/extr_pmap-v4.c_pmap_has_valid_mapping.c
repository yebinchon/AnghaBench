
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;


 int L2_TYPE_INV ;
 int L2_TYPE_MASK ;
 scalar_t__ pmap_get_pde_pte (int ,int ,int **,int**) ;

__attribute__((used)) static int
pmap_has_valid_mapping(pmap_t pm, vm_offset_t va)
{
 pd_entry_t *pde;
 pt_entry_t *ptep;

 if (pmap_get_pde_pte(pm, va, &pde, &ptep) &&
     ptep && ((*ptep & L2_TYPE_MASK) != L2_TYPE_INV))
  return (1);

 return (0);
}
