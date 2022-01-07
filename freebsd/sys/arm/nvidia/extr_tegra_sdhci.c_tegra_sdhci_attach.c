
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int quirks; int max_clk; int caps; } ;
struct tegra_sdhci_softc {int max_clk; int quirks; int caps; int force_card_present; int * mem_res; int * irq_res; int * reset; int * clk; int * gpio_power; int * intr_cookie; int * gpio; TYPE_1__ slot; int dev; } ;
typedef int prop ;
typedef int phandle_t ;
typedef int device_t ;


 int CLK_SET_ROUND_DOWN ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int MMC_CAP_4_BIT_DATA ;
 int MMC_CAP_8_BIT_DATA ;
 scalar_t__ OF_getencprop (int,char*,int*,int) ;
 scalar_t__ OF_hasprop (int,char*) ;
 int RD4 (struct tegra_sdhci_softc*,int ) ;
 int RF_ACTIVE ;
 int SDHCI_CAPABILITIES ;
 int SDHCI_CLOCK_V3_BASE_MASK ;
 int SDHCI_QUIRK_BROKEN_TIMEOUT_VAL ;
 int SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK ;
 int SDHCI_QUIRK_MISSING_CAPS ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,struct tegra_sdhci_softc*,int **) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int clk_enable (int *) ;
 int clk_get_by_ofw_index (int ,int ,int ,int **) ;
 int clk_get_freq (int *,int*) ;
 int clk_release (int *) ;
 int clk_set_freq (int *,int,int ) ;
 struct tegra_sdhci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int gpio_pin_get_by_ofw_property (int ,int,char*,int **) ;
 int gpio_pin_release (int *) ;
 int hwreset_deassert (int *) ;
 int hwreset_get_by_ofw_name (int ,int ,char*,int **) ;
 int hwreset_release (int *) ;
 int ofw_bus_get_node (int ) ;
 int * sdhci_fdt_gpio_setup (int ,TYPE_1__*) ;
 int sdhci_fdt_gpio_teardown (int *) ;
 int sdhci_init_slot (int ,TYPE_1__*,int ) ;
 int sdhci_start_slot (TYPE_1__*) ;
 int tegra_sdhci_intr ;

__attribute__((used)) static int
tegra_sdhci_attach(device_t dev)
{
 struct tegra_sdhci_softc *sc;
 int rid, rv;
 uint64_t freq;
 phandle_t node, prop;

 sc = device_get_softc(dev);
 sc->dev = dev;
 node = ofw_bus_get_node(dev);

 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->mem_res) {
  device_printf(dev, "cannot allocate memory window\n");
  rv = ENXIO;
  goto fail;
 }

 rid = 0;
 sc->irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (!sc->irq_res) {
  device_printf(dev, "cannot allocate interrupt\n");
  rv = ENXIO;
  goto fail;
 }

 if (bus_setup_intr(dev, sc->irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
     ((void*)0), tegra_sdhci_intr, sc, &sc->intr_cookie)) {
  device_printf(dev, "cannot setup interrupt handler\n");
  rv = ENXIO;
  goto fail;
 }

 rv = hwreset_get_by_ofw_name(sc->dev, 0, "sdhci", &sc->reset);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'sdhci' reset\n");
  goto fail;
 }
 rv = hwreset_deassert(sc->reset);
 if (rv != 0) {
  device_printf(dev, "Cannot unreset 'sdhci' reset\n");
  goto fail;
 }

 gpio_pin_get_by_ofw_property(sc->dev, node, "power-gpios", &sc->gpio_power);

 rv = clk_get_by_ofw_index(dev, 0, 0, &sc->clk);
 if (rv != 0) {
  device_printf(dev, "Cannot get clock\n");
  goto fail;
 }
 rv = clk_enable(sc->clk);
 if (rv != 0) {
  device_printf(dev, "Cannot enable clock\n");
  goto fail;
 }
 rv = clk_set_freq(sc->clk, 48000000, CLK_SET_ROUND_DOWN);
 if (rv != 0) {
  device_printf(dev, "Cannot set clock\n");
 }
 rv = clk_get_freq(sc->clk, &freq);
 if (rv != 0) {
  device_printf(dev, "Cannot get clock frequency\n");
  goto fail;
 }
 if (bootverbose)
  device_printf(dev, " Base MMC clock: %lld\n", freq);


 sc->max_clk = (int)freq;
 sc->quirks |= SDHCI_QUIRK_BROKEN_TIMEOUT_VAL |
     SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK |
     SDHCI_QUIRK_MISSING_CAPS;


 sc->caps = RD4(sc, SDHCI_CAPABILITIES);
 if (OF_getencprop(node, "bus-width", &prop, sizeof(prop)) > 0) {
  sc->caps &= ~(MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA);
  switch (prop) {
  case 8:
   sc->caps |= MMC_CAP_8_BIT_DATA;

  case 4:
   sc->caps |= MMC_CAP_4_BIT_DATA;
   break;
  case 1:
   break;
  default:
   device_printf(dev, "Bad bus-width value %u\n", prop);
   break;
  }
 }
 if (OF_hasprop(node, "non-removable"))
  sc->force_card_present = 1;




 sc->caps &= ~SDHCI_CLOCK_V3_BASE_MASK;

 sc->slot.quirks = sc->quirks;
 sc->slot.max_clk = sc->max_clk;
 sc->slot.caps = sc->caps;

 rv = sdhci_init_slot(dev, &sc->slot, 0);
 if (rv != 0) {
  goto fail;
 }

 sc->gpio = sdhci_fdt_gpio_setup(sc->dev, &sc->slot);

 bus_generic_probe(dev);
 bus_generic_attach(dev);

 sdhci_start_slot(&sc->slot);

 return (0);

fail:
 if (sc->gpio != ((void*)0))
  sdhci_fdt_gpio_teardown(sc->gpio);
 if (sc->intr_cookie != ((void*)0))
  bus_teardown_intr(dev, sc->irq_res, sc->intr_cookie);
 if (sc->gpio_power != ((void*)0))
  gpio_pin_release(sc->gpio_power);
 if (sc->clk != ((void*)0))
  clk_release(sc->clk);
 if (sc->reset != ((void*)0))
  hwreset_release(sc->reset);
 if (sc->irq_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->irq_res);
 if (sc->mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->mem_res);

 return (rv);
}
