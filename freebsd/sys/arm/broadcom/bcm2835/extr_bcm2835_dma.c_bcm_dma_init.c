
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int uint32_t ;
struct bcm_dma_softc {int sc_mem; int sc_dma_tag; struct bcm_dma_ch* sc_dma_ch; } ;
struct bcm_dma_ch {int ch; TYPE_1__* cb; int flags; int vc_cb; int dma_map; } ;
struct bcm_dma_cb {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {int info; } ;


 int BCM_DMA_CH_FREE ;
 int BCM_DMA_CH_MAX ;
 int BCM_DMA_CH_UNMAP ;
 int BCM_DMA_CS (int) ;
 int BCM_DMA_ENABLE ;
 int BCM_DMA_INT_STATUS ;
 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int CS_RESET ;
 int INFO_WAIT_RESP ;
 int bcm_dma_channel_mask ;
 int bcm_dmamap_cb ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,void*,int,int ,int *,int) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int ) ;
 int bzero (struct bcm_dma_ch*,int) ;
 struct bcm_dma_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static int
bcm_dma_init(device_t dev)
{
 struct bcm_dma_softc *sc = device_get_softc(dev);
 uint32_t reg;
 struct bcm_dma_ch *ch;
 void *cb_virt;
 vm_paddr_t cb_phys;
 int err;
 int i;
 reg = bus_read_4(sc->sc_mem, BCM_DMA_ENABLE);
 if ((reg & bcm_dma_channel_mask) != bcm_dma_channel_mask)
  device_printf(dev, "channels are not enabled\n");
 reg = bus_read_4(sc->sc_mem, BCM_DMA_INT_STATUS);
 if ((reg & bcm_dma_channel_mask) != 0)
  device_printf(dev, "statuses are not cleared\n");



 err = bus_dma_tag_create(bus_get_dma_tag(dev),
     1, 0, BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     sizeof(struct bcm_dma_cb), 1,
     sizeof(struct bcm_dma_cb),
     BUS_DMA_ALLOCNOW, ((void*)0), ((void*)0),
     &sc->sc_dma_tag);

 if (err) {
  device_printf(dev, "failed allocate DMA tag\n");
  return (err);
 }


 for (i = 0; i < BCM_DMA_CH_MAX; i++) {
  ch = &sc->sc_dma_ch[i];

  bzero(ch, sizeof(struct bcm_dma_ch));
  ch->ch = i;
  ch->flags = BCM_DMA_CH_UNMAP;

  if ((bcm_dma_channel_mask & (1 << i)) == 0)
   continue;

  err = bus_dmamem_alloc(sc->sc_dma_tag, &cb_virt,
      BUS_DMA_WAITOK | BUS_DMA_COHERENT | BUS_DMA_ZERO,
      &ch->dma_map);
  if (err) {
   device_printf(dev, "cannot allocate DMA memory\n");
   break;
  }






  if ((uintptr_t)cb_virt & 0x1f) {
   device_printf(dev,
       "DMA address is not 32-bytes aligned: %p\n",
       (void*)cb_virt);
   break;
  }

  err = bus_dmamap_load(sc->sc_dma_tag, ch->dma_map, cb_virt,
      sizeof(struct bcm_dma_cb), bcm_dmamap_cb, &cb_phys,
      BUS_DMA_WAITOK);
  if (err) {
   device_printf(dev, "cannot load DMA memory\n");
   break;
  }

  ch->cb = cb_virt;
  ch->vc_cb = cb_phys;
  ch->flags = BCM_DMA_CH_FREE;
  ch->cb->info = INFO_WAIT_RESP;


  bus_write_4(sc->sc_mem, BCM_DMA_CS(i), CS_RESET);
 }

 return (0);
}
