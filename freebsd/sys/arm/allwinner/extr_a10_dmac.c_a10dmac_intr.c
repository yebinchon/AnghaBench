
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct a10dmac_softc {TYPE_2__* sc_ddma_channels; TYPE_1__* sc_ndma_channels; } ;
struct TYPE_4__ {int ch_callbackarg; int (* ch_callback ) (int ) ;} ;
struct TYPE_3__ {int ch_callbackarg; int (* ch_callback ) (int ) ;} ;


 int AWIN_DMA_IRQ_END_MASK ;
 int AWIN_DMA_IRQ_NDMA ;
 int AWIN_DMA_IRQ_PEND_STA_REG ;
 int DMA_READ (struct a10dmac_softc*,int ) ;
 int DMA_WRITE (struct a10dmac_softc*,int ,int) ;
 int ffs (int) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void
a10dmac_intr(void *priv)
{
 struct a10dmac_softc *sc = priv;
 uint32_t sta, bit, mask;
 uint8_t index;

 sta = DMA_READ(sc, AWIN_DMA_IRQ_PEND_STA_REG);
 DMA_WRITE(sc, AWIN_DMA_IRQ_PEND_STA_REG, sta);

 while ((bit = ffs(sta & AWIN_DMA_IRQ_END_MASK)) != 0) {
  mask = (1U << (bit - 1));
  sta &= ~mask;
  index = ((bit - 1) / 2) & 7;
  if (mask & AWIN_DMA_IRQ_NDMA) {
   if (sc->sc_ndma_channels[index].ch_callback == ((void*)0))
    continue;
   sc->sc_ndma_channels[index].ch_callback(
       sc->sc_ndma_channels[index].ch_callbackarg);
  } else {
   if (sc->sc_ddma_channels[index].ch_callback == ((void*)0))
    continue;
   sc->sc_ddma_channels[index].ch_callback(
       sc->sc_ddma_channels[index].ch_callbackarg);
  }
 }
}
