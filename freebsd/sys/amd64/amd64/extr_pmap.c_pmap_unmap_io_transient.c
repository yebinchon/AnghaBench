
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef scalar_t__ vm_paddr_t ;
typedef int vm_offset_t ;
typedef scalar_t__ boolean_t ;


 int PAGE_SIZE ;
 scalar_t__ VM_PAGE_TO_PHYS (int ) ;
 scalar_t__ dmaplimit ;
 int kernel_arena ;
 int pmap_qremove (int ,int) ;
 int sched_unpin () ;
 int vmem_free (int ,int ,int ) ;

void
pmap_unmap_io_transient(vm_page_t page[], vm_offset_t vaddr[], int count,
    boolean_t can_fault)
{
 vm_paddr_t paddr;
 int i;

 if (!can_fault)
  sched_unpin();
 for (i = 0; i < count; i++) {
  paddr = VM_PAGE_TO_PHYS(page[i]);
  if (paddr >= dmaplimit) {
   if (can_fault)
    pmap_qremove(vaddr[i], 1);
   vmem_free(kernel_arena, vaddr[i], PAGE_SIZE);
  }
 }
}
