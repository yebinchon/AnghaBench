
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dma_map; } ;
struct linux_dma_priv {int dmat; } ;
struct dma_attrs {int dummy; } ;
struct device {struct linux_dma_priv* dma_priv; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_PRIV_LOCK (struct linux_dma_priv*) ;
 int DMA_PRIV_UNLOCK (struct linux_dma_priv*) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;

void
linux_dma_unmap_sg_attrs(struct device *dev, struct scatterlist *sgl,
    int nents, enum dma_data_direction dir, struct dma_attrs *attrs)
{
 struct linux_dma_priv *priv;

 priv = dev->dma_priv;

 DMA_PRIV_LOCK(priv);
 bus_dmamap_unload(priv->dmat, sgl->dma_map);
 bus_dmamap_destroy(priv->dmat, sgl->dma_map);
 DMA_PRIV_UNLOCK(priv);
}
