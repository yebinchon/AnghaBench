
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_page_t ;
typedef scalar_t__ vm_offset_t ;
struct sync_list {scalar_t__ vaddr; scalar_t__ pages; scalar_t__ datacount; scalar_t__ dataoffs; } ;
typedef int bus_dmasync_op_t ;


 int KASSERT (int,char*) ;
 scalar_t__ VM_PAGE_TO_PHYS (scalar_t__) ;
 size_t atop (int ) ;
 int bus_dmamap_sync_buf (scalar_t__,scalar_t__,int ,int) ;
 scalar_t__ pmap_quick_enter_page (scalar_t__) ;
 int pmap_quick_remove_page (scalar_t__) ;
 scalar_t__ ptoa (scalar_t__) ;
 int round_page (scalar_t__) ;

__attribute__((used)) static void
bus_dmamap_sync_sl(struct sync_list *sl, bus_dmasync_op_t op,
    int bufaligned)
{
 vm_offset_t tempvaddr;
 vm_page_t curpage;
 size_t npages;

 if (sl->vaddr != 0) {
  bus_dmamap_sync_buf(sl->vaddr, sl->datacount, op, bufaligned);
  return;
 }

 tempvaddr = 0;
 npages = atop(round_page(sl->dataoffs + sl->datacount));

 for (curpage = sl->pages; curpage != sl->pages + npages; ++curpage) {
  KASSERT(VM_PAGE_TO_PHYS(curpage) == VM_PAGE_TO_PHYS(sl->pages) +
      ptoa(curpage - sl->pages),
      ("unexpected vm_page_t phys: 0x%08x != 0x%08x",
      VM_PAGE_TO_PHYS(curpage), VM_PAGE_TO_PHYS(sl->pages) +
      ptoa(curpage - sl->pages)));
  tempvaddr = pmap_quick_enter_page(curpage);
  pmap_quick_remove_page(tempvaddr);
 }
}
