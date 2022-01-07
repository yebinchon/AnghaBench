
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef unsigned long vm_paddr_t ;
typedef int vm_memattr_t ;
typedef int u_long ;
struct TYPE_5__ {int flags; int valid; } ;


 int ENOMEM ;
 int PG_ZERO ;
 int VM_ALLOC_NOBUSY ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_NORMAL ;
 int VM_ALLOC_WIRED ;
 int VM_ALLOC_ZERO ;
 int VM_PAGE_BITS_ALL ;
 int pmap_zero_page (TYPE_1__*) ;
 TYPE_1__* vm_page_alloc_contig (int *,int ,int,size_t,unsigned long,unsigned long,int ,unsigned long,int ) ;
 int vm_page_reclaim_contig (int,size_t,unsigned long,unsigned long,int ,unsigned long) ;
 int vm_wait (int *) ;

__attribute__((used)) static int
tegra_bo_alloc_contig(size_t npages, u_long alignment, vm_memattr_t memattr,
    vm_page_t **ret_page)
{
 vm_page_t m;
 int pflags, tries, i;
 vm_paddr_t low, high, boundary;

 low = 0;
 high = -1UL;
 boundary = 0;
 pflags = VM_ALLOC_NORMAL | VM_ALLOC_NOOBJ | VM_ALLOC_NOBUSY |
     VM_ALLOC_WIRED | VM_ALLOC_ZERO;
 tries = 0;
retry:
 m = vm_page_alloc_contig(((void*)0), 0, pflags, npages, low, high, alignment,
     boundary, memattr);
 if (m == ((void*)0)) {
  if (tries < 3) {
   if (!vm_page_reclaim_contig(pflags, npages, low, high,
       alignment, boundary))
    vm_wait(((void*)0));
   tries++;
   goto retry;
  }
  return (ENOMEM);
 }

 for (i = 0; i < npages; i++, m++) {
  if ((m->flags & PG_ZERO) == 0)
   pmap_zero_page(m);
  m->valid = VM_PAGE_BITS_ALL;
  (*ret_page)[i] = m;
 }

 return (0);
}
