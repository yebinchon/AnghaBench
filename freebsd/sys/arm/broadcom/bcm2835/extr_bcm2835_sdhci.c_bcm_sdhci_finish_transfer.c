
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_slot {int dummy; } ;
typedef int device_t ;


 int sdhci_finish_data (struct sdhci_slot*) ;

__attribute__((used)) static void
bcm_sdhci_finish_transfer(device_t dev, struct sdhci_slot *slot)
{

 sdhci_finish_data(slot);
}
