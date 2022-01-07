
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sdhci_softc {int gpio; } ;
struct sdhci_slot {int dummy; } ;
typedef int device_t ;


 struct ti_sdhci_softc* device_get_softc (int ) ;
 int sdhci_fdt_gpio_get_present (int ) ;

__attribute__((used)) static bool
ti_sdhci_get_card_present(device_t dev, struct sdhci_slot *slot)
{
 struct ti_sdhci_softc *sc = device_get_softc(dev);

 return (sdhci_fdt_gpio_get_present(sc->gpio));
}
