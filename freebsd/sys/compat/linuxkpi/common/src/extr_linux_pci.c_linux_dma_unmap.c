
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_dma_priv {int dmat; int ptree; } ;
struct linux_dma_obj {int dmamap; } ;
struct device {struct linux_dma_priv* dma_priv; } ;
typedef int dma_addr_t ;


 int DMA_PRIV_LOCK (struct linux_dma_priv*) ;
 int DMA_PRIV_UNLOCK (struct linux_dma_priv*) ;
 struct linux_dma_obj* LINUX_DMA_PCTRIE_LOOKUP (int *,int ) ;
 int LINUX_DMA_PCTRIE_REMOVE (int *,int ) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int linux_dma_obj_zone ;
 scalar_t__ pctrie_is_empty (int *) ;
 int uma_zfree (int ,struct linux_dma_obj*) ;

void
linux_dma_unmap(struct device *dev, dma_addr_t dma_addr, size_t len)
{
 struct linux_dma_priv *priv;
 struct linux_dma_obj *obj;

 priv = dev->dma_priv;

 if (pctrie_is_empty(&priv->ptree))
  return;

 DMA_PRIV_LOCK(priv);
 obj = LINUX_DMA_PCTRIE_LOOKUP(&priv->ptree, dma_addr);
 if (obj == ((void*)0)) {
  DMA_PRIV_UNLOCK(priv);
  return;
 }
 LINUX_DMA_PCTRIE_REMOVE(&priv->ptree, dma_addr);
 bus_dmamap_unload(priv->dmat, obj->dmamap);
 bus_dmamap_destroy(priv->dmat, obj->dmamap);
 DMA_PRIV_UNLOCK(priv);

 uma_zfree(linux_dma_obj_zone, obj);
}
