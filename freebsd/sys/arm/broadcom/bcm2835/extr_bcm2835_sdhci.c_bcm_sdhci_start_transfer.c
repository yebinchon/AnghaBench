
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct sdhci_slot {TYPE_2__* curcmd; } ;
typedef int device_t ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {int flags; } ;


 int MMC_DATA_READ ;
 int bcm_sdhci_read_dma (int ,struct sdhci_slot*) ;
 int bcm_sdhci_write_dma (int ,struct sdhci_slot*) ;

__attribute__((used)) static void
bcm_sdhci_start_transfer(device_t dev, struct sdhci_slot *slot,
    uint32_t *intmask)
{


 if (slot->curcmd->data->flags & MMC_DATA_READ)
  bcm_sdhci_read_dma(dev, slot);
 else
  bcm_sdhci_write_dma(dev, slot);
}
