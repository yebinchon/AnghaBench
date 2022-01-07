
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef scalar_t__ pt_entry_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;
typedef int boolean_t ;


 int FALSE ;
 int KASSERT (int ,char*) ;
 int TRUE ;
 int pmap_get_pde_pte (int ,int ,int **,scalar_t__**) ;

boolean_t
pmap_is_prefaultable(pmap_t pmap, vm_offset_t addr)
{
 pd_entry_t *pde;
 pt_entry_t *pte;

 if (!pmap_get_pde_pte(pmap, addr, &pde, &pte))
  return (FALSE);
 KASSERT(pte != ((void*)0), ("Valid mapping but no pte ?"));
 if (*pte == 0)
  return (TRUE);
 return (FALSE);
}
