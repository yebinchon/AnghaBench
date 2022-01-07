
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sdma_softc {int sc_active_channels; } ;


 unsigned int DMA4_CCR (unsigned int) ;
 unsigned int DMA4_CICR (unsigned int) ;
 unsigned int DMA4_COLOR (unsigned int) ;
 unsigned int DMA4_CSR (unsigned int) ;
 int DMA4_CSR_CLEAR_MASK ;
 unsigned int DMA4_IRQSTATUS_L (unsigned int) ;
 int EBUSY ;
 int ENOMEM ;
 unsigned int NUM_DMA_IRQS ;
 int TI_SDMA_LOCK (struct ti_sdma_softc*) ;
 int TI_SDMA_UNLOCK (struct ti_sdma_softc*) ;
 struct ti_sdma_softc* ti_sdma_sc ;
 int ti_sdma_write_4 (struct ti_sdma_softc*,unsigned int,int) ;

int
ti_sdma_deactivate_channel(unsigned int ch)
{
 struct ti_sdma_softc *sc = ti_sdma_sc;
 unsigned int j;
 unsigned int addr;


 if (sc == ((void*)0))
  return (ENOMEM);

 TI_SDMA_LOCK(sc);


 if ((sc->sc_active_channels & (1 << ch)) == 0) {
  TI_SDMA_UNLOCK(sc);
  return (EBUSY);
 }


 sc->sc_active_channels &= ~(1 << ch);


 ti_sdma_write_4(sc, DMA4_CICR(ch), 0);


 ti_sdma_write_4(sc, DMA4_CCR(ch), 0);


 ti_sdma_write_4(sc, DMA4_CSR(ch), DMA4_CSR_CLEAR_MASK);
 for (j = 0; j < NUM_DMA_IRQS; j++) {
  ti_sdma_write_4(sc, DMA4_IRQSTATUS_L(j), (1 << ch));
 }


 for (addr = DMA4_CCR(ch); addr <= DMA4_COLOR(ch); addr += 4)
  ti_sdma_write_4(sc, addr, 0x00000000);

 TI_SDMA_UNLOCK(sc);

 return 0;
}
