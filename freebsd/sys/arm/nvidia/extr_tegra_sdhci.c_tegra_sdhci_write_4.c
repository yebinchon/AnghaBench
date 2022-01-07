
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tegra_sdhci_softc {int mem_res; } ;
struct sdhci_slot {int dummy; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int bus_write_4 (int ,int ,int ) ;
 struct tegra_sdhci_softc* device_get_softc (int ) ;

__attribute__((used)) static void
tegra_sdhci_write_4(device_t dev, struct sdhci_slot *slot, bus_size_t off,
    uint32_t val)
{
 struct tegra_sdhci_softc *sc;

 sc = device_get_softc(dev);
 bus_write_4(sc->mem_res, off, val);
}
