
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;
typedef int boolean_t ;


 int FALSE ;
 int PG_PS ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int* pmap_pde (int ,int ) ;
 int* pmap_pde_to_pte (int*,int ) ;
 int pmap_valid_bit (int ) ;

boolean_t
pmap_is_prefaultable(pmap_t pmap, vm_offset_t addr)
{
 pd_entry_t *pde;
 pt_entry_t *pte, PG_V;
 boolean_t rv;

 PG_V = pmap_valid_bit(pmap);
 rv = FALSE;
 PMAP_LOCK(pmap);
 pde = pmap_pde(pmap, addr);
 if (pde != ((void*)0) && (*pde & (PG_PS | PG_V)) == PG_V) {
  pte = pmap_pde_to_pte(pde, addr);
  rv = (*pte & PG_V) == 0;
 }
 PMAP_UNLOCK(pmap);
 return (rv);
}
