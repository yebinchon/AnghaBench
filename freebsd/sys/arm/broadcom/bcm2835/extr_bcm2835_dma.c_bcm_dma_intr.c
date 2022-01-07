
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm_dma_softc {int sc_dma_tag; int sc_mem; int sc_dev; } ;
struct bcm_dma_ch {int flags; int intr_arg; int ch; int (* intr_func ) (int ,int ) ;int dma_map; } ;


 int BCM_DMA_CH_USED ;
 int BCM_DMA_CS (int ) ;
 int BCM_DMA_DEBUG (int ) ;
 int BUS_DMASYNC_POSTWRITE ;
 int CS_END ;
 int CS_ERR ;
 int CS_INT ;
 int DEBUG_ERROR_MASK ;
 int bcm_dma_reset (int ,int ) ;
 struct bcm_dma_softc* bcm_dma_sc ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;
 int device_printf (int ,char*,int,int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
bcm_dma_intr(void *arg)
{
 struct bcm_dma_softc *sc = bcm_dma_sc;
 struct bcm_dma_ch *ch = (struct bcm_dma_ch *)arg;
 uint32_t cs, debug;


 cs = bus_read_4(sc->sc_mem, BCM_DMA_CS(ch->ch));







 if (!(ch->flags & BCM_DMA_CH_USED))
  return;


 if (!(cs & (CS_INT | CS_ERR)))
  return;

 if (cs & CS_ERR) {
  debug = bus_read_4(sc->sc_mem, BCM_DMA_DEBUG(ch->ch));
  device_printf(sc->sc_dev, "DMA error %d on CH%d\n",
   debug & DEBUG_ERROR_MASK, ch->ch);
  bus_write_4(sc->sc_mem, BCM_DMA_DEBUG(ch->ch),
      debug & DEBUG_ERROR_MASK);
  bcm_dma_reset(sc->sc_dev, ch->ch);
 }

 if (cs & CS_INT) {

  bus_write_4(sc->sc_mem, BCM_DMA_CS(ch->ch),
      CS_INT | CS_END);


  bus_dmamap_sync(sc->sc_dma_tag, ch->dma_map,
      BUS_DMASYNC_POSTWRITE);


  if (ch->intr_func)
   ch->intr_func(ch->ch, ch->intr_arg);
 }
}
