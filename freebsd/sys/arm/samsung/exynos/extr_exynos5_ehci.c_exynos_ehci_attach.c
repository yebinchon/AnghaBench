
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int dma_bits; int * bdev; int devices_max; int devices; void* parent; } ;
struct TYPE_6__ {int sc_intr_hdl; TYPE_2__ sc_bus; int sc_flags; int sc_vendor; int sc_io_hdl; int sc_io_size; void* sc_io_tag; int sc_devices; } ;
struct exynos_ehci_softc {int * res; void* sysreg_bsh; void* sysreg_bst; void* host_bsh; void* host_bst; TYPE_1__ base; void* dev; } ;
typedef TYPE_1__ ehci_softc_t ;
typedef int driver_intr_t ;
typedef void* device_t ;
typedef void* bus_space_handle_t ;


 int EHCI_MAX_DEVICES ;
 int EHCI_SCFLG_DONEINIT ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int USB_GET_DMA_TAG (void*) ;
 scalar_t__ bus_alloc_resources (void*,int ,int *) ;
 int bus_setup_intr (void*,int ,int,int *,int *,TYPE_1__*,int *) ;
 int bus_space_subregion (void*,void*,int,int ,int *) ;
 int bus_teardown_intr (void*,int ,int ) ;
 int * device_add_child (void*,char*,int) ;
 int device_delete_child (void*,int *) ;
 struct exynos_ehci_softc* device_get_softc (void*) ;
 int device_printf (void*,char*,...) ;
 int device_probe_and_attach (int *) ;
 int device_set_ivars (int *,TYPE_2__*) ;
 int ehci_init (TYPE_1__*) ;
 scalar_t__ ehci_interrupt ;
 int ehci_iterate_hw_softc ;
 int exynos_ehci_spec ;
 int phy_init (struct exynos_ehci_softc*) ;
 void* rman_get_bushandle (int ) ;
 void* rman_get_bustag (int ) ;
 int rman_get_size (int ) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ usb_bus_mem_alloc_all (TYPE_2__*,int ,int *) ;

__attribute__((used)) static int
exynos_ehci_attach(device_t dev)
{
 struct exynos_ehci_softc *esc;
 ehci_softc_t *sc;
 bus_space_handle_t bsh;
 int err;

 esc = device_get_softc(dev);
 esc->dev = dev;
 sc = &esc->base;
 sc->sc_bus.parent = dev;
 sc->sc_bus.devices = sc->sc_devices;
 sc->sc_bus.devices_max = EHCI_MAX_DEVICES;
 sc->sc_bus.dma_bits = 32;

 if (bus_alloc_resources(dev, exynos_ehci_spec, esc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->sc_io_tag = rman_get_bustag(esc->res[0]);
 bsh = rman_get_bushandle(esc->res[0]);
 sc->sc_io_size = rman_get_size(esc->res[0]);


 esc->host_bst = rman_get_bustag(esc->res[1]);
 esc->host_bsh = rman_get_bushandle(esc->res[1]);


 esc->sysreg_bst = rman_get_bustag(esc->res[2]);
 esc->sysreg_bsh = rman_get_bushandle(esc->res[2]);


 if (usb_bus_mem_alloc_all(&sc->sc_bus, USB_GET_DMA_TAG(dev),
  &ehci_iterate_hw_softc))
  return (ENXIO);





 err = bus_space_subregion(sc->sc_io_tag, bsh, 0x0,
     sc->sc_io_size, &sc->sc_io_hdl);
 if (err != 0)
  return (ENXIO);

 phy_init(esc);


 err = bus_setup_intr(dev, esc->res[3], INTR_TYPE_BIO | INTR_MPSAFE,
     ((void*)0), (driver_intr_t *)ehci_interrupt, sc,
     &sc->sc_intr_hdl);
 if (err) {
  device_printf(dev, "Could not setup irq, "
      "%d\n", err);
  return (1);
 }


 sc->sc_bus.bdev = device_add_child(dev, "usbus", -1);
 if (!sc->sc_bus.bdev) {
  device_printf(dev, "Could not add USB device\n");
  err = bus_teardown_intr(dev, esc->res[3],
      sc->sc_intr_hdl);
  if (err)
   device_printf(dev, "Could not tear down irq,"
       " %d\n", err);
  return (1);
 }
 device_set_ivars(sc->sc_bus.bdev, &sc->sc_bus);

 strlcpy(sc->sc_vendor, "Samsung", sizeof(sc->sc_vendor));

 err = ehci_init(sc);
 if (!err) {
  sc->sc_flags |= EHCI_SCFLG_DONEINIT;
  err = device_probe_and_attach(sc->sc_bus.bdev);
 } else {
  device_printf(dev, "USB init failed err=%d\n", err);

  device_delete_child(dev, sc->sc_bus.bdev);
  sc->sc_bus.bdev = ((void*)0);

  err = bus_teardown_intr(dev, esc->res[3],
      sc->sc_intr_hdl);
  if (err)
   device_printf(dev, "Could not tear down irq,"
       " %d\n", err);
  return (1);
 }
 return (0);
}
