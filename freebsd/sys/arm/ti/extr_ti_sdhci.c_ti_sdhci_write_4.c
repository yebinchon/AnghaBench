
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_sdhci_softc {int dummy; } ;
struct sdhci_slot {int dummy; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int WR4 (struct ti_sdhci_softc*,int ,int ) ;
 struct ti_sdhci_softc* device_get_softc (int ) ;

__attribute__((used)) static void
ti_sdhci_write_4(device_t dev, struct sdhci_slot *slot, bus_size_t off,
    uint32_t val)
{
 struct ti_sdhci_softc *sc = device_get_softc(dev);

 WR4(sc, off, val);
}
