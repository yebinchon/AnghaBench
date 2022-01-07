
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef int uint32_t ;
typedef scalar_t__ u_int ;
typedef void pt2_entry_t ;
typedef int pt1_entry_t ;


 int ATTR_TO_L1 (int ) ;
 scalar_t__ KERNBASE ;
 scalar_t__ KERNEL_P2V (scalar_t__) ;
 scalar_t__ KERNEL_V2P (scalar_t__) ;
 scalar_t__ NB_IN_PT1 ;
 scalar_t__ NB_IN_PT2 ;
 scalar_t__ NB_IN_PT2TAB ;
 scalar_t__ NKPT2PG ;
 scalar_t__ NPG_IN_PT1 ;
 scalar_t__ NPG_IN_PT2TAB ;
 scalar_t__ NPT2_IN_PT2TAB ;
 scalar_t__ PAGE_SIZE ;
 void* PT2MAP ;
 scalar_t__ PT2MAP_SIZE ;
 int PTE1_AP_KRW ;
 int PTE1_KERN (scalar_t__,int ,int ) ;
 int PTE1_LINK (scalar_t__) ;
 scalar_t__ PTE1_SIZE ;
 int PTE2_ATTR_DEFAULT ;
 int PTE2_KPT (scalar_t__) ;
 int PTE2_KPT_NG (scalar_t__) ;
 scalar_t__ PTE2_SIZE ;
 scalar_t__ base_pt1 ;
 int bzero (void*,scalar_t__) ;
 int cpuinfo_reinit_mmu (scalar_t__) ;
 int * kern_pt1 ;
 void* kern_pt2tab ;
 void* kern_pt2tab_entry (scalar_t__) ;
 int * kern_pte1 (scalar_t__) ;
 int last_paddr ;
 void* page_pt2 (scalar_t__,int ) ;
 scalar_t__ pmap_kern_ttb ;
 scalar_t__ pmap_preboot_get_pages (scalar_t__) ;
 int pt2tab_store (int ,int ) ;
 int pte1_index (scalar_t__) ;
 int pte1_roundup (scalar_t__) ;
 int pte1_store (int ,int ) ;
 int pte1_sync_range (int *,scalar_t__) ;
 int pte2_load (void*) ;
 scalar_t__ pte2_pa (int ) ;
 int pte2_store (int ,int ) ;
 int pte2_sync_range (void*,scalar_t__) ;
 scalar_t__ ttb_flags ;
 scalar_t__ virtual_avail ;
 int vm_phys_add_seg (scalar_t__,scalar_t__) ;

void
pmap_bootstrap_prepare(vm_paddr_t last)
{
 vm_paddr_t pt2pg_pa, pt2tab_pa, pa, size;
 vm_offset_t pt2pg_va;
 pt1_entry_t *pte1p;
 pt2_entry_t *pte2p;
 u_int i;
 uint32_t l1_attr;
 last_paddr = pte1_roundup(last);







 base_pt1 = pmap_preboot_get_pages(NPG_IN_PT1);
 kern_pt1 = (pt1_entry_t *)KERNEL_P2V(base_pt1);
 bzero((void*)kern_pt1, NB_IN_PT1);
 pte1_sync_range(kern_pt1, NB_IN_PT1);


 pt2tab_pa = pmap_preboot_get_pages(NPG_IN_PT2TAB);
 kern_pt2tab = (pt2_entry_t *)KERNEL_P2V(pt2tab_pa);
 bzero(kern_pt2tab, NB_IN_PT2TAB);
 pte2_sync_range(kern_pt2tab, NB_IN_PT2TAB);


 pt2pg_pa = pmap_preboot_get_pages(NKPT2PG);
 pt2pg_va = KERNEL_P2V(pt2pg_pa);
 size = NKPT2PG * PAGE_SIZE;
 bzero((void*)pt2pg_va, size);
 pte2_sync_range((pt2_entry_t *)pt2pg_va, size);
 vm_phys_add_seg(pt2tab_pa, pmap_preboot_get_pages(0));
 pte2p = kern_pt2tab_entry(KERNBASE);
 for (pa = pt2pg_pa; pa < pt2pg_pa + size; pa += PTE2_SIZE)
  pt2tab_store(pte2p++, PTE2_KPT(pa));

 pte1p = kern_pte1(KERNBASE);
 for (pa = pt2pg_pa; pa < pt2pg_pa + size; pa += NB_IN_PT2)
  pte1_store(pte1p++, PTE1_LINK(pa));


 l1_attr = ATTR_TO_L1(PTE2_ATTR_DEFAULT);
 pte1p = kern_pte1(KERNBASE);
 for (pa = KERNEL_V2P(KERNBASE); pa < last; pa += PTE1_SIZE)
  pte1_store(pte1p++, PTE1_KERN(pa, PTE1_AP_KRW, l1_attr));
 PT2MAP = (pt2_entry_t *)(KERNBASE - PT2MAP_SIZE);
 pte1p = kern_pte1((vm_offset_t)PT2MAP);
 for (pa = pt2tab_pa, i = 0; i < NPT2_IN_PT2TAB; i++, pa += NB_IN_PT2) {
  pte1_store(pte1p++, PTE1_LINK(pa));
 }





 pte2p = kern_pt2tab_entry((vm_offset_t)PT2MAP);
 for (pa = pt2tab_pa, i = 0; i < NPG_IN_PT2TAB; i++, pa += PTE2_SIZE) {
  pt2tab_store(pte2p++, PTE2_KPT_NG(pa));
 }
 pte2p = kern_pt2tab_entry((vm_offset_t)kern_pt1);
 pt2pg_va = KERNEL_P2V(pte2_pa(pte2_load(pte2p)));

 pte2p = page_pt2(pt2pg_va, pte1_index((vm_offset_t)kern_pt1));


 for (pa = base_pt1, i = 0; i < NPG_IN_PT1; i++, pa += PTE2_SIZE)
  pte2_store(pte2p++, PTE2_KPT(pa));


 for (pa = pt2tab_pa, i = 0; i < NPG_IN_PT2TAB; i++, pa += PTE2_SIZE)
  pte2_store(pte2p++, PTE2_KPT(pa));


 pmap_kern_ttb = base_pt1 | ttb_flags;
 cpuinfo_reinit_mmu(pmap_kern_ttb);




 virtual_avail = (vm_offset_t)kern_pt2tab + NPG_IN_PT2TAB * PAGE_SIZE;
}
