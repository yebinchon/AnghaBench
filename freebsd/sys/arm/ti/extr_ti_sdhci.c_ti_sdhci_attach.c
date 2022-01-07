
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int caps; } ;
struct TYPE_6__ {TYPE_1__ host; int quirks; int max_clk; } ;
struct ti_sdhci_softc {scalar_t__ mmchs_clk_id; int disable_highspeed; int disable_readonly; int force_card_present; void* mem_res; void* irq_res; scalar_t__ intr_cookie; TYPE_2__ slot; int baseclk_hz; int dev; int gpio; scalar_t__ mmchs_reg_off; scalar_t__ sdhci_reg_off; } ;
typedef int prop ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int device_t ;


 scalar_t__ AM335X_MMCHS_REG_OFFSET ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 scalar_t__ INVALID_CLK_IDENT ;
 scalar_t__ MMC1_CLK ;
 int MMC_CAP_4_BIT_DATA ;
 int MMC_CAP_8_BIT_DATA ;
 int MMC_OCR_290_300 ;
 int MMC_OCR_300_310 ;
 int MMC_OCR_LOW_VOLTAGE ;
 scalar_t__ OF_getencprop (int ,char*,int*,int) ;
 scalar_t__ OF_hasprop (int ,char*) ;
 scalar_t__ OMAP4_MMCHS_REG_OFFSET ;
 int RF_ACTIVE ;
 int SDHCI_QUIRK_BROKEN_DMA ;
 int SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK ;
 int SDHCI_QUIRK_DONT_SHIFT_RESPONSE ;
 int SDHCI_QUIRK_WAITFOR_RESET_ASSERTED ;
 int SDHCI_QUIRK_WAIT_WHILE_BUSY ;
 scalar_t__ SDHCI_REG_OFFSET ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int bus_release_resource (int ,int ,int ,void*) ;
 scalar_t__ bus_setup_intr (int ,void*,int,int *,int ,struct ti_sdhci_softc*,scalar_t__*) ;
 int bus_teardown_intr (int ,void*,scalar_t__) ;
 struct ti_sdhci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int ofw_bus_get_node (int ) ;
 int panic (char*) ;
 int sdhci_fdt_gpio_setup (int ,TYPE_2__*) ;
 int sdhci_init_slot (int ,TYPE_2__*,int ) ;
 int sdhci_start_slot (TYPE_2__*) ;
 int ti_chip () ;
 scalar_t__ ti_hwmods_get_clock (int ) ;
 int ti_sdhci_hw_init (int ) ;
 int ti_sdhci_intr ;

__attribute__((used)) static int
ti_sdhci_attach(device_t dev)
{
 struct ti_sdhci_softc *sc = device_get_softc(dev);
 int rid, err;
 pcell_t prop;
 phandle_t node;

 sc->dev = dev;







 node = ofw_bus_get_node(dev);
 sc->mmchs_clk_id = ti_hwmods_get_clock(dev);
 if (sc->mmchs_clk_id == INVALID_CLK_IDENT) {
  device_printf(dev, "failed to get clock based on hwmods property\n");
 }
 sc->slot.host.caps |= MMC_OCR_LOW_VOLTAGE;
 if (sc->mmchs_clk_id == MMC1_CLK || OF_hasprop(node, "ti,dual-volt")) {
  sc->slot.host.caps |= MMC_OCR_290_300 | MMC_OCR_300_310;
 }





 switch (ti_chip()) {
 default:
  panic("Unknown OMAP device\n");
 }





 sc->sdhci_reg_off = sc->mmchs_reg_off + SDHCI_REG_OFFSET;


 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->mem_res) {
  device_printf(dev, "cannot allocate memory window\n");
  err = ENXIO;
  goto fail;
 }

 rid = 0;
 sc->irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (!sc->irq_res) {
  device_printf(dev, "cannot allocate interrupt\n");
  err = ENXIO;
  goto fail;
 }

 if (bus_setup_intr(dev, sc->irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
     ((void*)0), ti_sdhci_intr, sc, &sc->intr_cookie)) {
  device_printf(dev, "cannot setup interrupt handler\n");
  err = ENXIO;
  goto fail;
 }
 sc->gpio = sdhci_fdt_gpio_setup(sc->dev, &sc->slot);

 if (!OF_hasprop(node, "wp-gpios") && !OF_hasprop(node, "wp-disable"))
  sc->disable_readonly = 1;


 ti_sdhci_hw_init(dev);
 sc->slot.max_clk = sc->baseclk_hz;






 sc->slot.quirks |= SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK;





 sc->slot.quirks |= SDHCI_QUIRK_DONT_SHIFT_RESPONSE;





 sc->slot.quirks |= SDHCI_QUIRK_WAITFOR_RESET_ASSERTED;




 sc->slot.quirks |= SDHCI_QUIRK_WAIT_WHILE_BUSY;




 sc->slot.quirks |= SDHCI_QUIRK_BROKEN_DMA;






 sdhci_init_slot(dev, &sc->slot, 0);






 if (OF_getencprop(node, "bus-width", &prop, sizeof(prop)) > 0) {
  sc->slot.host.caps &= ~(MMC_CAP_4_BIT_DATA |
      MMC_CAP_8_BIT_DATA);
  switch (prop) {
  case 8:
   sc->slot.host.caps |= MMC_CAP_8_BIT_DATA;

  case 4:
   sc->slot.host.caps |= MMC_CAP_4_BIT_DATA;
   break;
  case 1:
   break;
  default:
   device_printf(dev, "Bad bus-width value %u\n", prop);
   break;
  }
 }





 node = ofw_bus_get_node(dev);
 if (OF_hasprop(node, "non-removable"))
  sc->force_card_present = 1;

 bus_generic_probe(dev);
 bus_generic_attach(dev);

 sdhci_start_slot(&sc->slot);
 return (0);

fail:
 if (sc->intr_cookie)
  bus_teardown_intr(dev, sc->irq_res, sc->intr_cookie);
 if (sc->irq_res)
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->irq_res);
 if (sc->mem_res)
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->mem_res);

 return (err);
}
