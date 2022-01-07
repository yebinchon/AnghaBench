
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pt2_entry_t ;
typedef int pt1_entry_t ;


 int * kern_pte1 (int ) ;
 int pmap_preboot_pt2_setup (int ) ;
 int * pt2map_entry (int ) ;
 int pte1_is_valid (int ) ;
 int pte1_load (int *) ;

__attribute__((used)) static __inline pt2_entry_t*
pmap_preboot_vtopte2(vm_offset_t va)
{
 pt1_entry_t *pte1p;


 pte1p = kern_pte1(va);
 if (!pte1_is_valid(pte1_load(pte1p)))
  pmap_preboot_pt2_setup(va);

 return (pt2map_entry(va));
}
