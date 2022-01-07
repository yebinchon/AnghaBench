
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int gfp_t ;


 int BUS_SPACE_MAXADDR_32BIT ;
 int GFP_DMA32 ;
 int GFP_NATIVE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int VM_MEMATTR_DEFAULT ;
 int kmem_alloc_contig (size_t,int,int ,int ,scalar_t__,int ,int ) ;
 int kmem_malloc (size_t,int) ;

vm_offset_t
linux_alloc_kmem(gfp_t flags, unsigned int order)
{
 size_t size = ((size_t)PAGE_SIZE) << order;
 vm_offset_t addr;

 if ((flags & GFP_DMA32) == 0) {
  addr = kmem_malloc(size, flags & GFP_NATIVE_MASK);
 } else {
  addr = kmem_alloc_contig(size, flags & GFP_NATIVE_MASK, 0,
      BUS_SPACE_MAXADDR_32BIT, PAGE_SIZE, 0, VM_MEMATTR_DEFAULT);
 }
 return (addr);
}
