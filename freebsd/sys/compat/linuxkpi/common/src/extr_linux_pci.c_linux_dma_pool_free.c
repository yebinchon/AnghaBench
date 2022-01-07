
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_dma_obj {int dummy; } ;
struct dma_pool {int pool_zone; int pool_ptree; } ;
typedef int dma_addr_t ;


 int DMA_POOL_LOCK (struct dma_pool*) ;
 int DMA_POOL_UNLOCK (struct dma_pool*) ;
 struct linux_dma_obj* LINUX_DMA_PCTRIE_LOOKUP (int *,int ) ;
 int LINUX_DMA_PCTRIE_REMOVE (int *,int ) ;
 int uma_zfree_arg (int ,struct linux_dma_obj*,struct dma_pool*) ;

void
linux_dma_pool_free(struct dma_pool *pool, void *vaddr, dma_addr_t dma_addr)
{
 struct linux_dma_obj *obj;

 DMA_POOL_LOCK(pool);
 obj = LINUX_DMA_PCTRIE_LOOKUP(&pool->pool_ptree, dma_addr);
 if (obj == ((void*)0)) {
  DMA_POOL_UNLOCK(pool);
  return;
 }
 LINUX_DMA_PCTRIE_REMOVE(&pool->pool_ptree, dma_addr);
 DMA_POOL_UNLOCK(pool);

 uma_zfree_arg(pool->pool_zone, obj, pool);
}
