
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_slot {int dummy; } ;
struct tegra_sdhci_softc {int mem_res; int irq_res; int intr_cookie; int clk; int gpio; struct sdhci_slot slot; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int clk_release (int ) ;
 struct tegra_sdhci_softc* device_get_softc (int ) ;
 int rman_get_rid (int ) ;
 int sdhci_cleanup_slot (struct sdhci_slot*) ;
 int sdhci_fdt_gpio_teardown (int ) ;

__attribute__((used)) static int
tegra_sdhci_detach(device_t dev)
{
 struct tegra_sdhci_softc *sc = device_get_softc(dev);
 struct sdhci_slot *slot = &sc->slot;

 bus_generic_detach(dev);
 sdhci_fdt_gpio_teardown(sc->gpio);
 clk_release(sc->clk);
 bus_teardown_intr(dev, sc->irq_res, sc->intr_cookie);
 bus_release_resource(dev, SYS_RES_IRQ, rman_get_rid(sc->irq_res),
        sc->irq_res);

 sdhci_cleanup_slot(slot);
 bus_release_resource(dev, SYS_RES_MEMORY,
        rman_get_rid(sc->mem_res),
        sc->mem_res);
 return (0);
}
