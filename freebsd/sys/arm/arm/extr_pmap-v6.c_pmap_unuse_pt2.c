
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef scalar_t__ vm_offset_t ;
struct spglist {int dummy; } ;
typedef int pt1_entry_t ;
typedef int pmap_t ;
typedef int boolean_t ;


 int FALSE ;
 int PHYS_TO_VM_PAGE (int ) ;
 scalar_t__ VM_MAXUSER_ADDRESS ;
 int pmap_pte1 (int ,scalar_t__) ;
 int pmap_unwire_pt2 (int ,scalar_t__,int ,struct spglist*) ;
 int pte1_link_pa (int ) ;
 int pte1_load (int ) ;

__attribute__((used)) static boolean_t
pmap_unuse_pt2(pmap_t pmap, vm_offset_t va, struct spglist *free)
{
 pt1_entry_t pte1;
 vm_page_t mpte;

 if (va >= VM_MAXUSER_ADDRESS)
  return (FALSE);
 pte1 = pte1_load(pmap_pte1(pmap, va));
 mpte = PHYS_TO_VM_PAGE(pte1_link_pa(pte1));
 return (pmap_unwire_pt2(pmap, va, mpte, free));
}
