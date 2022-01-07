
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_sdma_softc {int sc_active_channels; int sc_dev; struct ti_sdma_channel* sc_channel; } ;
struct ti_sdma_channel {int callback_data; int (* callback ) (unsigned int,int,int ) ;} ;


 int DMA4_CSR (unsigned int) ;
 int DMA4_CSR_CLEAR_MASK ;
 int DMA4_CSR_DROP ;
 int DMA4_CSR_MISALIGNED_ADRS_ERR ;
 int DMA4_CSR_SECURE_ERR ;
 int DMA4_CSR_TRANS_ERR ;
 int DMA4_IRQENABLE_L (unsigned int) ;
 int DMA4_IRQSTATUS_L (unsigned int) ;
 unsigned int NUM_DMA_CHANNELS ;
 unsigned int NUM_DMA_IRQS ;
 int TI_SDMA_LOCK (struct ti_sdma_softc*) ;
 int TI_SDMA_UNLOCK (struct ti_sdma_softc*) ;
 int device_printf (int ,char*,unsigned int,...) ;
 int stub1 (unsigned int,int,int ) ;
 int ti_sdma_read_4 (struct ti_sdma_softc*,int ) ;
 struct ti_sdma_softc* ti_sdma_sc ;
 int ti_sdma_write_4 (struct ti_sdma_softc*,int ,int) ;

__attribute__((used)) static void
ti_sdma_intr(void *arg)
{
 struct ti_sdma_softc *sc = ti_sdma_sc;
 uint32_t intr;
 uint32_t csr;
 unsigned int ch, j;
 struct ti_sdma_channel* channel;

 TI_SDMA_LOCK(sc);

 for (j = 0; j < NUM_DMA_IRQS; j++) {


  intr = ti_sdma_read_4(sc, DMA4_IRQSTATUS_L(j));
  intr &= ti_sdma_read_4(sc, DMA4_IRQENABLE_L(j));
  if (intr == 0x00000000)
   continue;


  for (ch = 0; ch < NUM_DMA_CHANNELS; ch++) {
   if (intr & (1 << ch)) {
    channel = &sc->sc_channel[ch];


    csr = ti_sdma_read_4(sc, DMA4_CSR(ch));
    if (csr == 0) {
     device_printf(sc->sc_dev, "Spurious DMA IRQ for channel "
                   "%d\n", ch);
     continue;
    }


    if ((sc->sc_active_channels & (1 << ch)) == 0) {
     device_printf(sc->sc_dev, "IRQ %d for a non-activated "
                   "channel %d\n", j, ch);
     continue;
    }


    if (csr & DMA4_CSR_DROP)
     device_printf(sc->sc_dev, "Synchronization event drop "
                   "occurred during the transfer on channel %u\n",
          ch);
    if (csr & DMA4_CSR_SECURE_ERR)
     device_printf(sc->sc_dev, "Secure transaction error event "
                   "on channel %u\n", ch);
    if (csr & DMA4_CSR_MISALIGNED_ADRS_ERR)
     device_printf(sc->sc_dev, "Misaligned address error event "
                   "on channel %u\n", ch);
    if (csr & DMA4_CSR_TRANS_ERR) {
     device_printf(sc->sc_dev, "Transaction error event on "
                   "channel %u\n", ch);






    }


    ti_sdma_write_4(sc, DMA4_CSR(ch), DMA4_CSR_CLEAR_MASK);
    ti_sdma_write_4(sc, DMA4_IRQSTATUS_L(j), (1 << ch));


    if (channel->callback)
     channel->callback(ch, csr, channel->callback_data);
   }
  }
 }

 TI_SDMA_UNLOCK(sc);

 return;
}
