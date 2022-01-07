
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct page {int dummy; } ;


 unsigned int PAGE_SIZE ;
 scalar_t__ kva_alloc (size_t) ;
 int pmap_qenter (scalar_t__,struct page**,unsigned int) ;
 int vmmap_add (void*,size_t) ;

void *
vmap(struct page **pages, unsigned int count, unsigned long flags, int prot)
{
 vm_offset_t off;
 size_t size;

 size = count * PAGE_SIZE;
 off = kva_alloc(size);
 if (off == 0)
  return (((void*)0));
 vmmap_add((void *)off, size);
 pmap_qenter(off, pages, count);

 return ((void *)off);
}
