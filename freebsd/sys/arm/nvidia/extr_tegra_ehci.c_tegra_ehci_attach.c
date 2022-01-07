
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_7__ {int dma_bits; int * bdev; int devices_max; int devices; void* parent; } ;
struct TYPE_6__ {TYPE_2__ sc_bus; int sc_flags; int sc_vendor; int sc_id_vendor; int sc_intr_hdl; int sc_io_hdl; int sc_io_tag; int sc_devices; int sc_vendor_post_reset; int sc_vendor_get_port_speed; } ;
struct tegra_ehci_softc {void* dev; int usb_alloc_called; int * ehci_irq_res; int * ehci_mem_res; int phy; int reset; int clk; TYPE_1__ ehci_softc; } ;
typedef int phandle_t ;
typedef TYPE_1__ ehci_softc_t ;
typedef int driver_intr_t ;
typedef void* device_t ;


 int EHCI_MAX_DEVICES ;
 int EHCI_SCFLG_DONEINIT ;
 int EHCI_SCFLG_NORESTERM ;
 int EHCI_SCFLG_TT ;
 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TEGRA_EHCI_REG_OFF ;
 int TEGRA_EHCI_REG_SIZE ;
 int USB_GET_DMA_TAG (void*) ;
 int USB_VENDOR_FREESCALE ;
 void* bus_alloc_resource_any (void*,int ,int*,int) ;
 int bus_setup_intr (void*,int *,int,int *,int *,TYPE_1__*,int *) ;
 int bus_space_subregion (int ,int ,int ,int ,int *) ;
 int clk_enable (int ) ;
 int clk_get_by_ofw_index (void*,int ,int ,int *) ;
 int clk_get_freq (int ,scalar_t__*) ;
 int * device_add_child (void*,char*,int) ;
 struct tegra_ehci_softc* device_get_softc (void*) ;
 int device_printf (void*,char*,...) ;
 int device_probe_and_attach (int *) ;
 int device_set_ivars (int *,TYPE_2__*) ;
 int ehci_get_port_speed_hostc ;
 int ehci_init (TYPE_1__*) ;
 scalar_t__ ehci_interrupt ;
 int ehci_iterate_hw_softc ;
 int hwreset_deassert (int ) ;
 int hwreset_get_by_ofw_name (void*,int ,char*,int *) ;
 int ofw_bus_get_node (void*) ;
 int phy_enable (int ) ;
 int phy_get_by_ofw_property (void*,int ,char*,int *) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int strlcpy (int ,char*,int) ;
 int tegra_ehci_detach (void*) ;
 int tegra_ehci_post_reset ;
 int usb_bus_mem_alloc_all (TYPE_2__*,int ,int *) ;

__attribute__((used)) static int
tegra_ehci_attach(device_t dev)
{
 struct tegra_ehci_softc *sc;
 ehci_softc_t *esc;
 int rv, rid;
 uint64_t freq;
 phandle_t node;

 sc = device_get_softc(dev);
 sc->dev = dev;
 node = ofw_bus_get_node(dev);
 esc = &sc->ehci_softc;


 rid = 0;
 sc->ehci_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE | RF_SHAREABLE);
 if (sc->ehci_mem_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate memory resources\n");
  rv = ENXIO;
  goto out;
 }

 rid = 0;
 sc->ehci_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (sc->ehci_irq_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate IRQ resources\n");
  rv = ENXIO;
  goto out;
 }

 rv = hwreset_get_by_ofw_name(dev, 0, "usb", &sc->reset);
 if (rv != 0) {
  device_printf(dev, "Cannot get reset\n");
  rv = ENXIO;
  goto out;
 }

 rv = phy_get_by_ofw_property(sc->dev, 0, "nvidia,phy", &sc->phy);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'nvidia,phy' phy\n");
  rv = ENXIO;
  goto out;
 }

 rv = clk_get_by_ofw_index(sc->dev, 0, 0, &sc->clk);
 if (rv != 0) {
  device_printf(dev, "Cannot get clock\n");
  goto out;
 }

 rv = clk_enable(sc->clk);
 if (rv != 0) {
  device_printf(dev, "Cannot enable clock\n");
  goto out;
 }

 freq = 0;
 rv = clk_get_freq(sc->clk, &freq);
 if (rv != 0) {
  device_printf(dev, "Cannot get clock frequency\n");
  goto out;
 }

 rv = hwreset_deassert(sc->reset);
 if (rv != 0) {
  device_printf(dev, "Cannot clear reset: %d\n", rv);
  rv = ENXIO;
  goto out;
 }

 rv = phy_enable(sc->phy);
 if (rv != 0) {
  device_printf(dev, "Cannot enable phy: %d\n", rv);
  goto out;
 }


 esc->sc_vendor_get_port_speed = ehci_get_port_speed_hostc;
 esc->sc_vendor_post_reset = tegra_ehci_post_reset;
 esc->sc_io_tag = rman_get_bustag(sc->ehci_mem_res);
 esc->sc_bus.parent = dev;
 esc->sc_bus.devices = esc->sc_devices;
 esc->sc_bus.devices_max = EHCI_MAX_DEVICES;
 esc->sc_bus.dma_bits = 32;


 rv = usb_bus_mem_alloc_all(&esc->sc_bus, USB_GET_DMA_TAG(dev),
     &ehci_iterate_hw_softc);
 sc->usb_alloc_called = 1;
 if (rv != 0) {
  device_printf(dev, "usb_bus_mem_alloc_all() failed\n");
  rv = ENOMEM;
  goto out;
 }





 rv = bus_space_subregion(esc->sc_io_tag,
     rman_get_bushandle(sc->ehci_mem_res),
     TEGRA_EHCI_REG_OFF, TEGRA_EHCI_REG_SIZE, &esc->sc_io_hdl);
 if (rv != 0) {
  device_printf(dev, "Could not create USB memory subregion\n");
  rv = ENXIO;
  goto out;
 }


 rv = bus_setup_intr(dev, sc->ehci_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
     ((void*)0), (driver_intr_t *)ehci_interrupt, esc, &esc->sc_intr_hdl);
 if (rv != 0) {
  device_printf(dev, "Could not setup IRQ\n");
  goto out;
 }


 esc->sc_bus.bdev = device_add_child(dev, "usbus", -1);
 if (esc->sc_bus.bdev == ((void*)0)) {
  device_printf(dev, "Could not add USB device\n");
  goto out;
 }
 device_set_ivars(esc->sc_bus.bdev, &esc->sc_bus);

 esc->sc_id_vendor = USB_VENDOR_FREESCALE;
 strlcpy(esc->sc_vendor, "Nvidia", sizeof(esc->sc_vendor));


 esc->sc_flags |= EHCI_SCFLG_TT;
 esc->sc_flags |= EHCI_SCFLG_NORESTERM;
 rv = ehci_init(esc);
 if (rv != 0) {
  device_printf(dev, "USB init failed: %d\n",
      rv);
  goto out;
 }
 esc->sc_flags |= EHCI_SCFLG_DONEINIT;


 rv = device_probe_and_attach(esc->sc_bus.bdev);
 if (rv != 0) {
  device_printf(dev,
      "device_probe_and_attach() failed\n");
  goto out;
 }
 return (0);

out:
 tegra_ehci_detach(dev);
 return (rv);
}
