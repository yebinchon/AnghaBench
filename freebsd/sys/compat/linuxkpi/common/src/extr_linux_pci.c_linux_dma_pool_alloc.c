
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_dma_obj {void* vaddr; int dma_addr; } ;
struct dma_pool {int pool_zone; int pool_ptree; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int DMA_POOL_LOCK (struct dma_pool*) ;
 int DMA_POOL_UNLOCK (struct dma_pool*) ;
 scalar_t__ LINUX_DMA_PCTRIE_INSERT (int *,struct linux_dma_obj*) ;
 struct linux_dma_obj* uma_zalloc_arg (int ,struct dma_pool*,int ) ;
 int uma_zfree_arg (int ,struct linux_dma_obj*,struct dma_pool*) ;

void *
linux_dma_pool_alloc(struct dma_pool *pool, gfp_t mem_flags,
    dma_addr_t *handle)
{
 struct linux_dma_obj *obj;

 obj = uma_zalloc_arg(pool->pool_zone, pool, mem_flags);
 if (obj == ((void*)0))
  return (((void*)0));

 DMA_POOL_LOCK(pool);
 if (LINUX_DMA_PCTRIE_INSERT(&pool->pool_ptree, obj) != 0) {
  DMA_POOL_UNLOCK(pool);
  uma_zfree_arg(pool->pool_zone, obj, pool);
  return (((void*)0));
 }
 DMA_POOL_UNLOCK(pool);

 *handle = obj->dma_addr;
 return (obj->vaddr);
}
