
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct linux_dma_priv* dma_priv; } ;
struct pci_dev {TYPE_1__ dev; } ;
struct linux_dma_priv {int lock; scalar_t__ dmat; } ;


 int M_DEVBUF ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int free (struct linux_dma_priv*,int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
linux_pdev_dma_uninit(struct pci_dev *pdev)
{
 struct linux_dma_priv *priv;

 priv = pdev->dev.dma_priv;
 if (priv->dmat)
  bus_dma_tag_destroy(priv->dmat);
 mtx_destroy(&priv->lock);
 free(priv, M_DEVBUF);
 pdev->dev.dma_priv = ((void*)0);
 return (0);
}
