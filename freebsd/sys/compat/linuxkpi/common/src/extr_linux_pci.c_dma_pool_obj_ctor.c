
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct linux_dma_obj {int dma_addr; int vaddr; int dmamap; } ;
struct dma_pool {int pool_entry_size; int pool_dmat; } ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int BUS_DMA_NOWAIT ;
 int DMA_POOL_LOCK (struct dma_pool*) ;
 int DMA_POOL_UNLOCK (struct dma_pool*) ;
 int KASSERT (int,char*) ;
 int _bus_dmamap_load_phys (int ,int ,int ,int ,int ,TYPE_1__*,int*) ;
 int vtophys (int ) ;

__attribute__((used)) static inline int
dma_pool_obj_ctor(void *mem, int size, void *arg, int flags)
{
 struct linux_dma_obj *obj = mem;
 struct dma_pool *pool = arg;
 int error, nseg;
 bus_dma_segment_t seg;

 nseg = -1;
 DMA_POOL_LOCK(pool);
 error = _bus_dmamap_load_phys(pool->pool_dmat, obj->dmamap,
     vtophys(obj->vaddr), pool->pool_entry_size, BUS_DMA_NOWAIT,
     &seg, &nseg);
 DMA_POOL_UNLOCK(pool);
 if (error != 0) {
  return (error);
 }
 KASSERT(++nseg == 1, ("More than one segment (nseg=%d)", nseg));
 obj->dma_addr = seg.ds_addr;

 return (0);
}
