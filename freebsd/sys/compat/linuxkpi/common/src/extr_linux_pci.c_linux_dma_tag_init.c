
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct linux_dma_priv {scalar_t__ dma_mask; scalar_t__ dmat; } ;
struct device {int bsddev; struct linux_dma_priv* dma_priv; } ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE ;
 int bus_dma_tag_create (int ,int,int ,scalar_t__,int ,int *,int *,int ,int,int ,int ,int *,int *,scalar_t__*) ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_get_dma_tag (int ) ;

int
linux_dma_tag_init(struct device *dev, u64 dma_mask)
{
 struct linux_dma_priv *priv;
 int error;

 priv = dev->dma_priv;

 if (priv->dmat) {
  if (priv->dma_mask == dma_mask)
   return (0);

  bus_dma_tag_destroy(priv->dmat);
 }

 priv->dma_mask = dma_mask;

 error = bus_dma_tag_create(bus_get_dma_tag(dev->bsddev),
     1, 0,
     dma_mask,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE,
     1,
     BUS_SPACE_MAXSIZE,
     0,
     ((void*)0), ((void*)0),
     &priv->dmat);
 return (-error);
}
