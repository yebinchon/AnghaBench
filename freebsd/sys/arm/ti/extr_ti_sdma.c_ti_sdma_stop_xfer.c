
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_sdma_softc {int sc_active_channels; TYPE_1__* sc_channel; } ;
struct TYPE_2__ {int need_reg_write; } ;


 int DMA4_CCR (unsigned int) ;
 int DMA4_CICR (unsigned int) ;
 int DMA4_CSR (unsigned int) ;
 int DMA4_CSR_CLEAR_MASK ;
 int DMA4_IRQSTATUS_L (unsigned int) ;
 int EINVAL ;
 int ENOMEM ;
 unsigned int NUM_DMA_IRQS ;
 int TI_SDMA_LOCK (struct ti_sdma_softc*) ;
 int TI_SDMA_UNLOCK (struct ti_sdma_softc*) ;
 struct ti_sdma_softc* ti_sdma_sc ;
 int ti_sdma_write_4 (struct ti_sdma_softc*,int ,int) ;

int
ti_sdma_stop_xfer(unsigned int ch)
{
 struct ti_sdma_softc *sc = ti_sdma_sc;
 unsigned int j;


 if (sc == ((void*)0))
  return (ENOMEM);

 TI_SDMA_LOCK(sc);

 if ((sc->sc_active_channels & (1 << ch)) == 0) {
  TI_SDMA_UNLOCK(sc);
  return (EINVAL);
 }


 ti_sdma_write_4(sc, DMA4_CICR(ch), 0);


 ti_sdma_write_4(sc, DMA4_CCR(ch), 0);


 ti_sdma_write_4(sc, DMA4_CSR(ch), DMA4_CSR_CLEAR_MASK);
 for (j = 0; j < NUM_DMA_IRQS; j++) {
  ti_sdma_write_4(sc, DMA4_IRQSTATUS_L(j), (1 << ch));
 }


 sc->sc_channel[ch].need_reg_write = 1;

 TI_SDMA_UNLOCK(sc);

 return (0);
}
