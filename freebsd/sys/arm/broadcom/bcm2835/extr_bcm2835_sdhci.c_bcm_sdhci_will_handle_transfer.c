
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sdhci_slot {scalar_t__ offset; TYPE_3__* curcmd; int bus; } ;
struct bcm_sdhci_softc {TYPE_1__* conf; } ;
typedef int device_t ;
struct TYPE_6__ {TYPE_2__* data; } ;
struct TYPE_5__ {scalar_t__ len; } ;
struct TYPE_4__ {int use_dma; } ;


 size_t BCM_DMA_BLOCK_SIZE ;
 struct bcm_sdhci_softc* device_get_softc (int ) ;
 size_t min (size_t,scalar_t__) ;

__attribute__((used)) static int
bcm_sdhci_will_handle_transfer(device_t dev, struct sdhci_slot *slot)
{
 struct bcm_sdhci_softc *sc = device_get_softc(slot->bus);
 size_t left;

 if (!sc->conf->use_dma)
  return (0);





 left = min(BCM_DMA_BLOCK_SIZE,
     slot->curcmd->data->len - slot->offset);
 if (left < BCM_DMA_BLOCK_SIZE)
  return (0);
 if (left & 0x03)
  return (0);

 return (1);
}
