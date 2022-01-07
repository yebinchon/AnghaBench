
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pt1_entry_t ;


 int PTE1_LINK (int ) ;
 int * kern_pte1 (int ) ;
 int page_pt2pa (int ,int ) ;
 int pmap_preboot_pt2pg_setup (int ) ;
 int pte1_index (int ) ;
 int pte1_store (int *,int ) ;

__attribute__((used)) static void
pmap_preboot_pt2_setup(vm_offset_t va)
{
 pt1_entry_t *pte1p;
 vm_paddr_t pt2pg_pa, pt2_pa;


 pt2pg_pa = pmap_preboot_pt2pg_setup(va);
 pt2_pa = page_pt2pa(pt2pg_pa, pte1_index(va));


 pte1p = kern_pte1(va);
 pte1_store(pte1p, PTE1_LINK(pt2_pa));
}
