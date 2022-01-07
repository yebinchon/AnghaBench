
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_sdhci_softc {int gpio; } ;
typedef int device_t ;


 struct tegra_sdhci_softc* device_get_softc (int ) ;
 int sdhci_fdt_gpio_get_readonly (int ) ;

__attribute__((used)) static int
tegra_sdhci_get_ro(device_t brdev, device_t reqdev)
{
 struct tegra_sdhci_softc *sc = device_get_softc(brdev);

 return (sdhci_fdt_gpio_get_readonly(sc->gpio));
}
