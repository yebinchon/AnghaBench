
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tegra_sdhci_softc {int mem_res; } ;
struct sdhci_slot {int dummy; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int bus_read_1 (int ,int ) ;
 struct tegra_sdhci_softc* device_get_softc (int ) ;

__attribute__((used)) static uint8_t
tegra_sdhci_read_1(device_t dev, struct sdhci_slot *slot, bus_size_t off)
{
 struct tegra_sdhci_softc *sc;

 sc = device_get_softc(dev);
 return (bus_read_1(sc->mem_res, off));
}
