
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef int gfp_t ;
struct TYPE_8__ {int flags; } ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int GFP_DMA32 ;
 int KASSERT (int,char*) ;
 int M_WAITOK ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int PG_ZERO ;
 TYPE_1__* PHYS_TO_VM_PAGE (int ) ;
 scalar_t__ PMAP_HAS_DMAP ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_NORMAL ;
 int VM_ALLOC_WIRED ;
 int VM_ALLOC_ZERO ;
 int VM_MEMATTR_DEFAULT ;
 scalar_t__ linux_alloc_kmem (int,unsigned int) ;
 scalar_t__ page_address (TYPE_1__*) ;
 int pmap_zero_page (TYPE_1__*) ;
 TYPE_1__* vm_page_alloc (int *,int ,int) ;
 TYPE_1__* vm_page_alloc_contig (int *,int ,int,unsigned long,int ,int ,int ,int ,int ) ;
 int vm_page_reclaim_contig (int,unsigned long,int ,int ,int ,int ) ;
 int vm_wait (int *) ;
 int vtophys (void*) ;

vm_page_t
linux_alloc_pages(gfp_t flags, unsigned int order)
{
 vm_page_t page;

 if (PMAP_HAS_DMAP) {
  unsigned long npages = 1UL << order;
  int req = VM_ALLOC_NOOBJ | VM_ALLOC_WIRED | VM_ALLOC_NORMAL;

  if ((flags & M_ZERO) != 0)
   req |= VM_ALLOC_ZERO;
  if (order == 0 && (flags & GFP_DMA32) == 0) {
   page = vm_page_alloc(((void*)0), 0, req);
   if (page == ((void*)0))
    return (((void*)0));
  } else {
   vm_paddr_t pmax = (flags & GFP_DMA32) ?
       BUS_SPACE_MAXADDR_32BIT : BUS_SPACE_MAXADDR;
  retry:
   page = vm_page_alloc_contig(((void*)0), 0, req,
       npages, 0, pmax, PAGE_SIZE, 0, VM_MEMATTR_DEFAULT);

   if (page == ((void*)0)) {
    if (flags & M_WAITOK) {
     if (!vm_page_reclaim_contig(req,
         npages, 0, pmax, PAGE_SIZE, 0)) {
      vm_wait(((void*)0));
     }
     flags &= ~M_WAITOK;
     goto retry;
    }
    return (((void*)0));
   }
  }
  if (flags & M_ZERO) {
   unsigned long x;

   for (x = 0; x != npages; x++) {
    vm_page_t pgo = page + x;

    if ((pgo->flags & PG_ZERO) == 0)
     pmap_zero_page(pgo);
   }
  }
 } else {
  vm_offset_t vaddr;

  vaddr = linux_alloc_kmem(flags, order);
  if (vaddr == 0)
   return (((void*)0));

  page = PHYS_TO_VM_PAGE(vtophys((void *)vaddr));

  KASSERT(vaddr == (vm_offset_t)page_address(page),
      ("Page address mismatch"));
 }

 return (page);
}
