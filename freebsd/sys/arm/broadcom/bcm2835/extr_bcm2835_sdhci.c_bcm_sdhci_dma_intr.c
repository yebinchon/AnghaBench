
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct sdhci_slot {int offset; int intmask; int mtx; int bus; TYPE_2__* curcmd; } ;
struct bcm_sdhci_softc {scalar_t__ dmamap_seg_index; scalar_t__ dmamap_seg_count; scalar_t__ dmamap_status; int sc_dma_map; int sc_dma_tag; int sc_dev; struct sdhci_slot sc_slot; } ;
struct TYPE_4__ {int error; TYPE_1__* data; } ;
struct TYPE_3__ {int flags; int len; scalar_t__ data; } ;


 int BCM_SDHCI_BUFFER_SIZE ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMA_NOWAIT ;
 int MMC_DATA_READ ;
 int MMC_ERR_NO_MEMORY ;
 int SDHCI_INT_DATA_AVAIL ;
 int SDHCI_INT_DATA_END ;
 int SDHCI_INT_SPACE_AVAIL ;
 int SDHCI_INT_STATUS ;
 int SDHCI_SIGNAL_ENABLE ;
 int bcm_sdhci_dmacb ;
 int bcm_sdhci_read_4 (int ,struct sdhci_slot*,int ) ;
 int bcm_sdhci_start_dma_seg (struct bcm_sdhci_softc*) ;
 int bcm_sdhci_write_4 (int ,struct sdhci_slot*,int ,int) ;
 scalar_t__ bus_dmamap_load (int ,int ,int *,int,int ,struct bcm_sdhci_softc*,int ) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int device_printf (int ,char*) ;
 int min (int,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sdhci_finish_data (struct sdhci_slot*) ;

__attribute__((used)) static void
bcm_sdhci_dma_intr(int ch, void *arg)
{
 struct bcm_sdhci_softc *sc = (struct bcm_sdhci_softc *)arg;
 struct sdhci_slot *slot = &sc->sc_slot;
 uint32_t reg, mask;
 int left, sync_op;

 mtx_lock(&slot->mtx);

 if (slot->curcmd == ((void*)0)) {
  mtx_unlock(&slot->mtx);
  device_printf(sc->sc_dev,
      "command aborted in the middle of DMA\n");
  return;
 }






 if (sc->dmamap_seg_index < sc->dmamap_seg_count) {
  bcm_sdhci_start_dma_seg(sc);
  mtx_unlock(&slot->mtx);
  return;
 }

 if (slot->curcmd->data->flags & MMC_DATA_READ) {
  sync_op = BUS_DMASYNC_POSTREAD;
  mask = SDHCI_INT_DATA_AVAIL;
 } else {
  sync_op = BUS_DMASYNC_POSTWRITE;
  mask = SDHCI_INT_SPACE_AVAIL;
 }
 bus_dmamap_sync(sc->sc_dma_tag, sc->sc_dma_map, sync_op);
 bus_dmamap_unload(sc->sc_dma_tag, sc->sc_dma_map);

 sc->dmamap_seg_count = 0;
 sc->dmamap_seg_index = 0;

 left = min(BCM_SDHCI_BUFFER_SIZE,
     slot->curcmd->data->len - slot->offset);







 if (left < BCM_SDHCI_BUFFER_SIZE) {

  slot->intmask |= SDHCI_INT_DATA_AVAIL | SDHCI_INT_SPACE_AVAIL |
      SDHCI_INT_DATA_END;
  bcm_sdhci_write_4(slot->bus, slot, SDHCI_SIGNAL_ENABLE,
      slot->intmask);
  mtx_unlock(&slot->mtx);
  return;
 }


 reg = bcm_sdhci_read_4(slot->bus, slot, SDHCI_INT_STATUS);

 if (reg & SDHCI_INT_DATA_END) {

  bcm_sdhci_write_4(slot->bus, slot, SDHCI_INT_STATUS, reg);


  slot->intmask |= SDHCI_INT_DATA_AVAIL | SDHCI_INT_SPACE_AVAIL
      | SDHCI_INT_DATA_END;
  bcm_sdhci_write_4(slot->bus, slot, SDHCI_SIGNAL_ENABLE,
      slot->intmask);


  sdhci_finish_data(slot);
 }
 else {

  if (reg & mask) {


   bcm_sdhci_write_4(slot->bus, slot,
       SDHCI_INT_STATUS, mask);


   if (bus_dmamap_load(sc->sc_dma_tag, sc->sc_dma_map,
       (uint8_t *)slot->curcmd->data->data +
       slot->offset, left, bcm_sdhci_dmacb, sc,
       BUS_DMA_NOWAIT) != 0 || sc->dmamap_status != 0) {
    slot->curcmd->error = MMC_ERR_NO_MEMORY;
    sdhci_finish_data(slot);
   } else {
    bcm_sdhci_start_dma_seg(sc);
   }
  } else {



   slot->intmask |= SDHCI_INT_DATA_AVAIL |
       SDHCI_INT_SPACE_AVAIL | SDHCI_INT_DATA_END;
   bcm_sdhci_write_4(slot->bus, slot, SDHCI_SIGNAL_ENABLE,
       slot->intmask);
  }
 }

 mtx_unlock(&slot->mtx);
}
