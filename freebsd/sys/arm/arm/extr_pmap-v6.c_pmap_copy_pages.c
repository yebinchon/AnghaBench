
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef size_t vm_offset_t ;
struct pcpu {char* pc_cmap1_addr; char* pc_cmap2_addr; int pc_cmap_lock; int * pc_cmap2_pte2p; int * pc_cmap1_pte2p; } ;
typedef int pt2_entry_t ;


 size_t PAGE_MASK ;
 size_t PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int PTE2_AP_KR ;
 int PTE2_AP_KRW ;
 int PTE2_KERN_NG (int ,int,int ) ;
 int PTE2_NM ;
 int VM_PAGE_TO_PHYS (int ) ;
 int bcopy (char*,char*,int) ;
 struct pcpu* get_pcpu () ;
 int min (int,scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*) ;
 int pte2_clear (int *) ;
 scalar_t__ pte2_load (int *) ;
 int pte2_store (int *,int ) ;
 int sched_pin () ;
 int sched_unpin () ;
 int tlb_flush (size_t) ;
 int tlb_flush_local (size_t) ;
 int vm_page_pte2_attr (int ) ;

void
pmap_copy_pages(vm_page_t ma[], vm_offset_t a_offset, vm_page_t mb[],
    vm_offset_t b_offset, int xfersize)
{
 pt2_entry_t *cmap1_pte2p, *cmap2_pte2p;
 vm_page_t a_pg, b_pg;
 char *a_cp, *b_cp;
 vm_offset_t a_pg_offset, b_pg_offset;
 struct pcpu *pc;
 int cnt;

 sched_pin();
 pc = get_pcpu();
 cmap1_pte2p = pc->pc_cmap1_pte2p;
 cmap2_pte2p = pc->pc_cmap2_pte2p;
 mtx_lock(&pc->pc_cmap_lock);
 if (pte2_load(cmap1_pte2p) != 0)
  panic("pmap_copy_pages: CMAP1 busy");
 if (pte2_load(cmap2_pte2p) != 0)
  panic("pmap_copy_pages: CMAP2 busy");
 while (xfersize > 0) {
  a_pg = ma[a_offset >> PAGE_SHIFT];
  a_pg_offset = a_offset & PAGE_MASK;
  cnt = min(xfersize, PAGE_SIZE - a_pg_offset);
  b_pg = mb[b_offset >> PAGE_SHIFT];
  b_pg_offset = b_offset & PAGE_MASK;
  cnt = min(cnt, PAGE_SIZE - b_pg_offset);
  pte2_store(cmap1_pte2p, PTE2_KERN_NG(VM_PAGE_TO_PHYS(a_pg),
      PTE2_AP_KR | PTE2_NM, vm_page_pte2_attr(a_pg)));
  tlb_flush_local((vm_offset_t)pc->pc_cmap1_addr);
  pte2_store(cmap2_pte2p, PTE2_KERN_NG(VM_PAGE_TO_PHYS(b_pg),
      PTE2_AP_KRW, vm_page_pte2_attr(b_pg)));
  tlb_flush_local((vm_offset_t)pc->pc_cmap2_addr);
  a_cp = pc->pc_cmap1_addr + a_pg_offset;
  b_cp = pc->pc_cmap2_addr + b_pg_offset;
  bcopy(a_cp, b_cp, cnt);
  a_offset += cnt;
  b_offset += cnt;
  xfersize -= cnt;
 }
 pte2_clear(cmap1_pte2p);
 tlb_flush((vm_offset_t)pc->pc_cmap1_addr);
 pte2_clear(cmap2_pte2p);
 tlb_flush((vm_offset_t)pc->pc_cmap2_addr);
 sched_unpin();
 mtx_unlock(&pc->pc_cmap_lock);
}
