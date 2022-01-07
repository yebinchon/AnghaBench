
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct a10dmac_softc {int sc_mtx; } ;
struct a10dmac_channel {scalar_t__ ch_type; int * ch_callbackarg; int * ch_callback; int ch_index; struct a10dmac_softc* ch_sc; } ;
typedef int device_t ;


 int AWIN_DDMA_CTL_DMA_LOADING ;
 int AWIN_DMA_IRQ_DDMA_END (int ) ;
 int AWIN_DMA_IRQ_EN_REG ;
 int AWIN_DMA_IRQ_NDMA_END (int ) ;
 int AWIN_DMA_IRQ_PEND_STA_REG ;
 int AWIN_NDMA_CTL_DMA_LOADING ;
 scalar_t__ CH_NDMA ;
 int DMA_READ (struct a10dmac_softc*,int ) ;
 int DMA_WRITE (struct a10dmac_softc*,int ,int ) ;
 int a10dmac_read_ctl (struct a10dmac_channel*) ;
 int a10dmac_write_ctl (struct a10dmac_channel*,int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static void
a10dmac_free(device_t dev, void *priv)
{
 struct a10dmac_channel *ch = priv;
 struct a10dmac_softc *sc = ch->ch_sc;
 uint32_t irqen, sta, cfg;

 mtx_lock_spin(&sc->sc_mtx);

 irqen = DMA_READ(sc, AWIN_DMA_IRQ_EN_REG);
 cfg = a10dmac_read_ctl(ch);
 if (ch->ch_type == CH_NDMA) {
  sta = AWIN_DMA_IRQ_NDMA_END(ch->ch_index);
  cfg &= ~AWIN_NDMA_CTL_DMA_LOADING;
 } else {
  sta = AWIN_DMA_IRQ_DDMA_END(ch->ch_index);
  cfg &= ~AWIN_DDMA_CTL_DMA_LOADING;
 }
 irqen &= ~sta;
 a10dmac_write_ctl(ch, cfg);
 DMA_WRITE(sc, AWIN_DMA_IRQ_EN_REG, irqen);
 DMA_WRITE(sc, AWIN_DMA_IRQ_PEND_STA_REG, sta);

 ch->ch_callback = ((void*)0);
 ch->ch_callbackarg = ((void*)0);

 mtx_unlock_spin(&sc->sc_mtx);
}
