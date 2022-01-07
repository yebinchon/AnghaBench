
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pool {int pool_lock; int pool_dmat; int pool_zone; } ;


 int bus_dma_tag_destroy (int ) ;
 int kfree (struct dma_pool*) ;
 int mtx_destroy (int *) ;
 int uma_zdestroy (int ) ;

void
linux_dma_pool_destroy(struct dma_pool *pool)
{

 uma_zdestroy(pool->pool_zone);
 bus_dma_tag_destroy(pool->pool_dmat);
 mtx_destroy(&pool->pool_lock);
 kfree(pool);
}
