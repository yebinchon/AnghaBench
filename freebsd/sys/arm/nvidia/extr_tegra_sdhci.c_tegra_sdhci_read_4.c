
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tegra_sdhci_softc {scalar_t__ force_card_present; int mem_res; } ;
struct sdhci_slot {int dummy; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int SDHCI_CARD_PRESENT ;
 int SDHCI_PRESENT_STATE ;
 int bus_read_4 (int ,int ) ;
 struct tegra_sdhci_softc* device_get_softc (int ) ;

__attribute__((used)) static uint32_t
tegra_sdhci_read_4(device_t dev, struct sdhci_slot *slot, bus_size_t off)
{
 struct tegra_sdhci_softc *sc;
 uint32_t val32;

 sc = device_get_softc(dev);
 val32 = bus_read_4(sc->mem_res, off);

 if (off == SDHCI_PRESENT_STATE && sc->force_card_present)
  val32 |= SDHCI_CARD_PRESENT;
 return (val32);
}
