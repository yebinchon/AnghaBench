
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_dma_obj {int dmamap; } ;
struct dma_pool {int pool_dmat; } ;


 int DMA_POOL_LOCK (struct dma_pool*) ;
 int DMA_POOL_UNLOCK (struct dma_pool*) ;
 int bus_dmamap_unload (int ,int ) ;

__attribute__((used)) static void
dma_pool_obj_dtor(void *mem, int size, void *arg)
{
 struct linux_dma_obj *obj = mem;
 struct dma_pool *pool = arg;

 DMA_POOL_LOCK(pool);
 bus_dmamap_unload(pool->pool_dmat, obj->dmamap);
 DMA_POOL_UNLOCK(pool);
}
