
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef int vm_offset_t ;
struct linux_dma_priv {scalar_t__ dma_mask; } ;
struct device {struct linux_dma_priv* dma_priv; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 scalar_t__ BUS_SPACE_MAXADDR ;
 scalar_t__ BUS_SPACE_MAXADDR_32BIT ;
 int GFP_DMA32 ;
 size_t PAGE_SIZE ;
 int VM_MEMATTR_DEFAULT ;
 size_t get_order (size_t) ;
 scalar_t__ kmem_alloc_contig (size_t,int,int ,scalar_t__,size_t,int ,int ) ;
 int kmem_free (int ,size_t) ;
 int linux_dma_map_phys (struct device*,int ,size_t) ;
 int vtophys (void*) ;

void *
linux_dma_alloc_coherent(struct device *dev, size_t size,
    dma_addr_t *dma_handle, gfp_t flag)
{
 struct linux_dma_priv *priv;
 vm_paddr_t high;
 size_t align;
 void *mem;

 if (dev == ((void*)0) || dev->dma_priv == ((void*)0)) {
  *dma_handle = 0;
  return (((void*)0));
 }
 priv = dev->dma_priv;
 if (priv->dma_mask)
  high = priv->dma_mask;
 else if (flag & GFP_DMA32)
  high = BUS_SPACE_MAXADDR_32BIT;
 else
  high = BUS_SPACE_MAXADDR;
 align = PAGE_SIZE << get_order(size);
 mem = (void *)kmem_alloc_contig(size, flag, 0, high, align, 0,
     VM_MEMATTR_DEFAULT);
 if (mem != ((void*)0)) {
  *dma_handle = linux_dma_map_phys(dev, vtophys(mem), size);
  if (*dma_handle == 0) {
   kmem_free((vm_offset_t)mem, size);
   mem = ((void*)0);
  }
 } else {
  *dma_handle = 0;
 }
 return (mem);
}
