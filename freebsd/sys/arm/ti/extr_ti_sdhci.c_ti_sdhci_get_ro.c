
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sdhci_softc {int gpio; scalar_t__ disable_readonly; } ;
typedef int device_t ;


 struct ti_sdhci_softc* device_get_softc (int ) ;
 int sdhci_fdt_gpio_get_readonly (int ) ;

__attribute__((used)) static int
ti_sdhci_get_ro(device_t brdev, device_t reqdev)
{
 struct ti_sdhci_softc *sc = device_get_softc(brdev);

 if (sc->disable_readonly)
  return (0);

 return (sdhci_fdt_gpio_get_readonly(sc->gpio));
}
