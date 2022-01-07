
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct bcm_dma_softc {TYPE_1__* sc_dma_ch; int sc_mem; } ;
struct bcm_dma_cb {int info; } ;
typedef int device_t ;
struct TYPE_2__ {struct bcm_dma_cb* cb; } ;


 int BCM_DMA_CBADDR (int) ;
 int BCM_DMA_CBNEXT (int) ;
 int BCM_DMA_CH_MAX ;
 int BCM_DMA_CS (int) ;
 int CS_ABORT ;
 int CS_ACTIVE ;
 int CS_END ;
 int CS_INT ;
 int CS_ISPAUSED ;
 int INFO_WAIT_RESP ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;
 int bzero (struct bcm_dma_cb*,int) ;
 struct bcm_dma_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static void
bcm_dma_reset(device_t dev, int ch)
{
 struct bcm_dma_softc *sc = device_get_softc(dev);
 struct bcm_dma_cb *cb;
 uint32_t cs;
 int count;

 if (ch < 0 || ch >= BCM_DMA_CH_MAX)
  return;

 cs = bus_read_4(sc->sc_mem, BCM_DMA_CS(ch));

 if (cs & CS_ACTIVE) {

  bus_write_4(sc->sc_mem, BCM_DMA_CS(ch), 0);

  count = 1000;
  do {
   cs = bus_read_4(sc->sc_mem, BCM_DMA_CS(ch));
  } while (!(cs & CS_ISPAUSED) && (count-- > 0));

  if (!(cs & CS_ISPAUSED)) {
   device_printf(dev,
       "Can't abort DMA transfer at channel %d\n", ch);
  }

  bus_write_4(sc->sc_mem, BCM_DMA_CBNEXT(ch), 0);


  bus_write_4(sc->sc_mem, BCM_DMA_CS(ch),
      CS_ABORT | CS_INT | CS_END| CS_ACTIVE);
 }


 bus_write_4(sc->sc_mem, BCM_DMA_CBADDR(ch), 0);
 bus_write_4(sc->sc_mem, BCM_DMA_CBNEXT(ch), 0);


 cb = sc->sc_dma_ch[ch].cb;
 bzero(cb, sizeof(*cb));
 cb->info = INFO_WAIT_RESP;
}
