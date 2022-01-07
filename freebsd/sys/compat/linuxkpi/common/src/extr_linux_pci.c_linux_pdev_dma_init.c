
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct linux_dma_priv* dma_priv; } ;
struct pci_dev {TYPE_1__ dev; } ;
struct linux_dma_priv {int lock; int ptree; } ;


 int DMA_BIT_MASK (int) ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int free (struct linux_dma_priv*,int ) ;
 int linux_dma_tag_init (TYPE_1__*,int ) ;
 struct linux_dma_priv* malloc (int,int ,int) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int pctrie_init (int *) ;

__attribute__((used)) static int
linux_pdev_dma_init(struct pci_dev *pdev)
{
 struct linux_dma_priv *priv;
 int error;

 priv = malloc(sizeof(*priv), M_DEVBUF, M_WAITOK | M_ZERO);
 pdev->dev.dma_priv = priv;

 mtx_init(&priv->lock, "lkpi-priv-dma", ((void*)0), MTX_DEF);

 pctrie_init(&priv->ptree);


 error = linux_dma_tag_init(&pdev->dev, DMA_BIT_MASK(64));
 if (error) {
  mtx_destroy(&priv->lock);
  free(priv, M_DEVBUF);
  pdev->dev.dma_priv = ((void*)0);
 }
 return (error);
}
