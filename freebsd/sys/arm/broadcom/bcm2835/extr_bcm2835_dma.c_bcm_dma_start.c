
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
struct bcm_dma_softc {TYPE_1__* sc_dma_ch; int sc_mem; int sc_dma_tag; } ;
struct bcm_dma_cb {int len; void* dst; void* src; } ;
struct TYPE_2__ {int flags; struct bcm_dma_cb* cb; int vc_cb; int dma_map; } ;


 scalar_t__ BCM2835_ARM_IS_IO (int ) ;
 int BCM_DMA_CBADDR (int) ;
 int BCM_DMA_CH_MAX ;
 int BCM_DMA_CH_USED ;
 int BCM_DMA_CS (int) ;
 int BUS_DMASYNC_PREWRITE ;
 int CS_ACTIVE ;
 void* IO_TO_VCBUS (int ) ;
 void* PHYS_TO_VCBUS (int ) ;
 int bcm_dma_cb_dump (struct bcm_dma_cb*) ;
 int bcm_dma_reg_dump (int) ;
 struct bcm_dma_softc* bcm_dma_sc ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_write_4 (int ,int ,int ) ;

int
bcm_dma_start(int ch, vm_paddr_t src, vm_paddr_t dst, int len)
{
 struct bcm_dma_softc *sc = bcm_dma_sc;
 struct bcm_dma_cb *cb;

 if (ch < 0 || ch >= BCM_DMA_CH_MAX)
  return (-1);

 if (!(sc->sc_dma_ch[ch].flags & BCM_DMA_CH_USED))
  return (-1);

 cb = sc->sc_dma_ch[ch].cb;
 if (BCM2835_ARM_IS_IO(src))
  cb->src = IO_TO_VCBUS(src);
 else
  cb->src = PHYS_TO_VCBUS(src);
 if (BCM2835_ARM_IS_IO(dst))
  cb->dst = IO_TO_VCBUS(dst);
 else
  cb->dst = PHYS_TO_VCBUS(dst);
 cb->len = len;

 bus_dmamap_sync(sc->sc_dma_tag,
     sc->sc_dma_ch[ch].dma_map, BUS_DMASYNC_PREWRITE);

 bus_write_4(sc->sc_mem, BCM_DMA_CBADDR(ch),
     sc->sc_dma_ch[ch].vc_cb);
 bus_write_4(sc->sc_mem, BCM_DMA_CS(ch), CS_ACTIVE);






 return (0);
}
