
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef int boolean_t ;


 int FALSE ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int TRUE ;
 scalar_t__ pmap_load (int *) ;
 int * pmap_pte (int ,int ,int*) ;

boolean_t
pmap_is_prefaultable(pmap_t pmap, vm_offset_t addr)
{
 pt_entry_t *pte;
 boolean_t rv;
 int lvl;

 rv = FALSE;
 PMAP_LOCK(pmap);
 pte = pmap_pte(pmap, addr, &lvl);
 if (pte != ((void*)0) && pmap_load(pte) != 0) {
  rv = TRUE;
 }
 PMAP_UNLOCK(pmap);
 return (rv);
}
