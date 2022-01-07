
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcm_dma_softc {int sc_mtx; int sc_dev; TYPE_1__* sc_dma_ch; } ;
struct TYPE_2__ {int flags; int * intr_arg; int * intr_func; } ;


 int BCM_DMA_CH_FREE ;
 int BCM_DMA_CH_MAX ;
 int BCM_DMA_CH_USED ;
 int bcm_dma_reset (int ,int) ;
 struct bcm_dma_softc* bcm_dma_sc ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
bcm_dma_free(int ch)
{
 struct bcm_dma_softc *sc = bcm_dma_sc;

 if (ch < 0 || ch >= BCM_DMA_CH_MAX)
  return (-1);

 mtx_lock(&sc->sc_mtx);
 if (sc->sc_dma_ch[ch].flags & BCM_DMA_CH_USED) {
  sc->sc_dma_ch[ch].flags |= BCM_DMA_CH_FREE;
  sc->sc_dma_ch[ch].flags &= ~BCM_DMA_CH_USED;
  sc->sc_dma_ch[ch].intr_func = ((void*)0);
  sc->sc_dma_ch[ch].intr_arg = ((void*)0);


  bcm_dma_reset(sc->sc_dev, ch);
 }

 mtx_unlock(&sc->sc_mtx);
 return (0);
}
