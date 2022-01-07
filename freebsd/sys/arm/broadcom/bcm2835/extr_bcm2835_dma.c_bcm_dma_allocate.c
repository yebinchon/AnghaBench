
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcm_dma_softc {int sc_mtx; TYPE_1__* sc_dma_ch; } ;
struct TYPE_2__ {int flags; } ;


 int BCM_DMA_CH_FREE ;
 int BCM_DMA_CH_INVALID ;
 int BCM_DMA_CH_MAX ;
 int BCM_DMA_CH_USED ;
 struct bcm_dma_softc* bcm_dma_sc ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
bcm_dma_allocate(int req_ch)
{
 struct bcm_dma_softc *sc = bcm_dma_sc;
 int ch = BCM_DMA_CH_INVALID;
 int i;

 if (req_ch >= BCM_DMA_CH_MAX)
  return (BCM_DMA_CH_INVALID);


 mtx_lock(&sc->sc_mtx);

 if (req_ch < 0) {
  for (i = 0; i < BCM_DMA_CH_MAX; i++) {
   if (sc->sc_dma_ch[i].flags & BCM_DMA_CH_FREE) {
    ch = i;
    sc->sc_dma_ch[ch].flags &= ~BCM_DMA_CH_FREE;
    sc->sc_dma_ch[ch].flags |= BCM_DMA_CH_USED;
    break;
   }
  }
 }
 else {
  if (sc->sc_dma_ch[req_ch].flags & BCM_DMA_CH_FREE) {
   ch = req_ch;
   sc->sc_dma_ch[ch].flags &= ~BCM_DMA_CH_FREE;
   sc->sc_dma_ch[ch].flags |= BCM_DMA_CH_USED;
  }
 }

 mtx_unlock(&sc->sc_mtx);
 return (ch);
}
