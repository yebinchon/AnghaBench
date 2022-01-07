
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef size_t vm_offset_t ;


 size_t PAGE_MASK ;
 size_t PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int VM_PAGE_TO_PHYS (int ) ;
 int cpu_dcache_wbinv_all () ;
 int cpu_l2cache_wbinv_all () ;
 int min (int,scalar_t__) ;
 int pmap_copy_page_offs_generic (int ,size_t,int ,size_t,int) ;

void
pmap_copy_pages(vm_page_t ma[], vm_offset_t a_offset, vm_page_t mb[],
    vm_offset_t b_offset, int xfersize)
{
 vm_page_t a_pg, b_pg;
 vm_offset_t a_pg_offset, b_pg_offset;
 int cnt;

 cpu_dcache_wbinv_all();
 cpu_l2cache_wbinv_all();
 while (xfersize > 0) {
  a_pg = ma[a_offset >> PAGE_SHIFT];
  a_pg_offset = a_offset & PAGE_MASK;
  cnt = min(xfersize, PAGE_SIZE - a_pg_offset);
  b_pg = mb[b_offset >> PAGE_SHIFT];
  b_pg_offset = b_offset & PAGE_MASK;
  cnt = min(cnt, PAGE_SIZE - b_pg_offset);
  pmap_copy_page_offs_generic(VM_PAGE_TO_PHYS(a_pg), a_pg_offset,
      VM_PAGE_TO_PHYS(b_pg), b_pg_offset, cnt);
  xfersize -= cnt;
  a_offset += cnt;
  b_offset += cnt;
 }
}
