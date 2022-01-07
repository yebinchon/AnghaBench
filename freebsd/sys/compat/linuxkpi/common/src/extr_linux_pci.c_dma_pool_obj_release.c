
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct linux_dma_priv {int dummy; } ;
struct linux_dma_obj {int dmamap; int vaddr; } ;
struct dma_pool {int pool_dmat; TYPE_1__* pool_device; } ;
struct TYPE_2__ {struct linux_dma_priv* dma_priv; } ;


 int bus_dmamem_free (int ,int ,int ) ;
 int linux_dma_obj_zone ;
 int uma_zfree (int ,struct linux_dma_obj*) ;

__attribute__((used)) static void
dma_pool_obj_release(void *arg, void **store, int count)
{
 struct dma_pool *pool = arg;
 struct linux_dma_priv *priv;
 struct linux_dma_obj *obj;
 int i;

 priv = pool->pool_device->dma_priv;
 for (i = 0; i < count; i++) {
  obj = store[i];
  bus_dmamem_free(pool->pool_dmat, obj->vaddr, obj->dmamap);
  uma_zfree(linux_dma_obj_zone, obj);
 }
}
