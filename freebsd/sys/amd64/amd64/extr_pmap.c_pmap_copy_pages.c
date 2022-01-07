
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef size_t vm_offset_t ;
typedef int boolean_t ;


 int FALSE ;
 size_t PAGE_MASK ;
 size_t PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ __predict_false (int ) ;
 int bcopy (void*,void*,int) ;
 int min (int,scalar_t__) ;
 int pmap_map_io_transient (int *,size_t*,int,int ) ;
 int pmap_unmap_io_transient (int *,size_t*,int,int ) ;

void
pmap_copy_pages(vm_page_t ma[], vm_offset_t a_offset, vm_page_t mb[],
    vm_offset_t b_offset, int xfersize)
{
 void *a_cp, *b_cp;
 vm_page_t pages[2];
 vm_offset_t vaddr[2], a_pg_offset, b_pg_offset;
 int cnt;
 boolean_t mapped;

 while (xfersize > 0) {
  a_pg_offset = a_offset & PAGE_MASK;
  pages[0] = ma[a_offset >> PAGE_SHIFT];
  b_pg_offset = b_offset & PAGE_MASK;
  pages[1] = mb[b_offset >> PAGE_SHIFT];
  cnt = min(xfersize, PAGE_SIZE - a_pg_offset);
  cnt = min(cnt, PAGE_SIZE - b_pg_offset);
  mapped = pmap_map_io_transient(pages, vaddr, 2, FALSE);
  a_cp = (char *)vaddr[0] + a_pg_offset;
  b_cp = (char *)vaddr[1] + b_pg_offset;
  bcopy(a_cp, b_cp, cnt);
  if (__predict_false(mapped))
   pmap_unmap_io_transient(pages, vaddr, 2, FALSE);
  a_offset += cnt;
  b_offset += cnt;
  xfersize -= cnt;
 }
}
