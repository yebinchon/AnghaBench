
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pt2_entry_t ;
typedef int pt1_entry_t ;
typedef int pmap_t ;
typedef int boolean_t ;


 int FALSE ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int pmap_pte1 (int ,int ) ;
 int pt2map_entry (int ) ;
 scalar_t__ pte1_is_link (int ) ;
 int pte1_load (int ) ;
 int pte2_is_valid (int ) ;
 int pte2_load (int ) ;

boolean_t
pmap_is_prefaultable(pmap_t pmap, vm_offset_t addr)
{
 pt1_entry_t pte1;
 pt2_entry_t pte2;
 boolean_t rv;

 rv = FALSE;
 PMAP_LOCK(pmap);
 pte1 = pte1_load(pmap_pte1(pmap, addr));
 if (pte1_is_link(pte1)) {
  pte2 = pte2_load(pt2map_entry(addr));
  rv = !pte2_is_valid(pte2) ;
 }
 PMAP_UNLOCK(pmap);
 return (rv);
}
