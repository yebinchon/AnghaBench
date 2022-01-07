
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;


 scalar_t__ NBPDR ;
 int PG_PROMOTED ;
 int pmap_invalidate_page (int ,scalar_t__) ;
 int pmap_invalidate_range (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
pmap_invalidate_pde_page(pmap_t pmap, vm_offset_t va, pd_entry_t pde)
{
 if ((pde & PG_PROMOTED) != 0)
  pmap_invalidate_range(pmap, va, va + NBPDR - 1);
 else
  pmap_invalidate_page(pmap, va);
}
