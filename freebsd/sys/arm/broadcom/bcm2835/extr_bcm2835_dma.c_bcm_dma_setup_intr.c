
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcm_dma_softc {TYPE_1__* sc_dma_ch; } ;
struct bcm_dma_cb {int info; } ;
struct TYPE_2__ {int flags; void (* intr_func ) (int,void*) ;struct bcm_dma_cb* cb; void* intr_arg; } ;


 int BCM_DMA_CH_MAX ;
 int BCM_DMA_CH_USED ;
 int INFO_INT_EN ;
 struct bcm_dma_softc* bcm_dma_sc ;

int
bcm_dma_setup_intr(int ch, void (*func)(int, void *), void *arg)
{
 struct bcm_dma_softc *sc = bcm_dma_sc;
 struct bcm_dma_cb *cb;

 if (ch < 0 || ch >= BCM_DMA_CH_MAX)
  return (-1);

 if (!(sc->sc_dma_ch[ch].flags & BCM_DMA_CH_USED))
  return (-1);

 sc->sc_dma_ch[ch].intr_func = func;
 sc->sc_dma_ch[ch].intr_arg = arg;
 cb = sc->sc_dma_ch[ch].cb;
 cb->info |= INFO_INT_EN;

 return (0);
}
