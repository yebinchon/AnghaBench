
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;


 int PAGE_MASK ;
 int PAGE_SIZE ;
 int PG_FRAME ;
 int invlpg (int) ;
 int pmap_kenter (int,int) ;
 scalar_t__ pmap_kenter_temporary (int,int) ;
 int round_page (int ) ;

__attribute__((used)) static void *
table_map(vm_paddr_t pa, int offset, vm_offset_t length)
{
 vm_offset_t va, off;
 void *data;

 off = pa & PAGE_MASK;
 length = round_page(length + off);
 pa = pa & PG_FRAME;
 va = (vm_offset_t)pmap_kenter_temporary(pa, offset) +
     (offset * PAGE_SIZE);
 data = (void *)(va + off);
 length -= PAGE_SIZE;
 while (length > 0) {
  va += PAGE_SIZE;
  pa += PAGE_SIZE;
  length -= PAGE_SIZE;
  pmap_kenter(va, pa);
  invlpg(va);
 }
 return (data);
}
