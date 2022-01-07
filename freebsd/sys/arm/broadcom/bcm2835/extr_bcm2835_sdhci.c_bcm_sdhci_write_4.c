
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sdhci_slot {int dummy; } ;
struct bcm_sdhci_softc {int dummy; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int WR4 (struct bcm_sdhci_softc*,int ,int ) ;
 struct bcm_sdhci_softc* device_get_softc (int ) ;

__attribute__((used)) static void
bcm_sdhci_write_4(device_t dev, struct sdhci_slot *slot, bus_size_t off, uint32_t val)
{
 struct bcm_sdhci_softc *sc = device_get_softc(dev);
 WR4(sc, off, val);
}
