
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int dma_bits; int bdev; int devices_max; int devices; void* parent; } ;
struct TYPE_6__ {TYPE_2__ sc_bus; int * sc_intr_hdl; int * sc_irq_res; void* sc_io_res; int sc_io_size; int sc_io_tag; int sc_io_hdl; int sc_vendor; int sc_devices; } ;
struct omap_ehci_softc {void* sc_dev; TYPE_1__ base; } ;
typedef int phandle_t ;
typedef TYPE_1__ ehci_softc_t ;
typedef int driver_intr_t ;
typedef void* device_t ;


 int EHCI_MAX_DEVICES ;
 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int OF_finddevice (char*) ;
 int OMAP_EHCI_HC_DEVSTR ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int USB_GET_DMA_TAG (void*) ;
 void* bus_alloc_resource_any (void*,int ,int*,int ) ;
 int bus_setup_intr (void*,int *,int,int *,int *,TYPE_1__*,int **) ;
 int device_add_child (void*,char*,int) ;
 struct omap_ehci_softc* device_get_softc (void*) ;
 int device_printf (void*,char*,...) ;
 int device_probe_and_attach (int ) ;
 int device_set_desc (int ,int ) ;
 int device_set_ivars (int ,TYPE_2__*) ;
 int ehci_init (TYPE_1__*) ;
 scalar_t__ ehci_interrupt ;
 int ehci_iterate_hw_softc ;
 scalar_t__ ofw_bus_node_is_compatible (int ,char*) ;
 int omap_ehci_detach (void*) ;
 int omap_ehci_init (struct omap_ehci_softc*) ;
 int pandaboard_usb_hub_init () ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;
 int rman_get_size (void*) ;
 int sprintf (int ,char*) ;
 scalar_t__ usb_bus_mem_alloc_all (TYPE_2__*,int ,int *) ;

__attribute__((used)) static int
omap_ehci_attach(device_t dev)
{
 struct omap_ehci_softc *isc = device_get_softc(dev);
 ehci_softc_t *sc = &isc->base;



 int err;
 int rid;
 sc->sc_bus.parent = dev;
 sc->sc_bus.devices = sc->sc_devices;
 sc->sc_bus.devices_max = EHCI_MAX_DEVICES;
 sc->sc_bus.dma_bits = 32;

 sprintf(sc->sc_vendor, "Texas Instruments");


 isc->sc_dev = dev;


 if (usb_bus_mem_alloc_all(&sc->sc_bus, USB_GET_DMA_TAG(dev),
                           &ehci_iterate_hw_softc)) {
  return (ENOMEM);
 }


 rid = 0;
 sc->sc_io_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (!sc->sc_io_res) {
  device_printf(dev, "Error: Could not map EHCI memory\n");
  goto error;
 }

 rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
 if (sc->sc_irq_res == ((void*)0)) {
  device_printf(dev, "Error: could not allocate irq\n");
  goto error;
 }


 sc->sc_bus.bdev = device_add_child(dev, "usbus", -1);
 if (!sc->sc_bus.bdev) {
  device_printf(dev, "Error: could not add USB device\n");
  goto error;
 }

 device_set_ivars(sc->sc_bus.bdev, &sc->sc_bus);
 device_set_desc(sc->sc_bus.bdev, OMAP_EHCI_HC_DEVSTR);


 err = omap_ehci_init(isc);
 if (err) {
  device_printf(dev, "Error: could not setup OMAP EHCI, %d\n", err);
  goto error;
 }


 sc->sc_io_hdl = rman_get_bushandle(sc->sc_io_res);
 sc->sc_io_tag = rman_get_bustag(sc->sc_io_res);
 sc->sc_io_size = rman_get_size(sc->sc_io_res);


 err = bus_setup_intr(dev, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
       ((void*)0), (driver_intr_t *)ehci_interrupt, sc, &sc->sc_intr_hdl);
 if (err) {
  device_printf(dev, "Error: could not setup irq, %d\n", err);
  sc->sc_intr_hdl = ((void*)0);
  goto error;
 }


 err = ehci_init(sc);
 if (err == 0) {
  err = device_probe_and_attach(sc->sc_bus.bdev);
 }
 if (err) {
  device_printf(dev, "Error: USB init failed err=%d\n", err);
  goto error;
 }

 return (0);

error:
 omap_ehci_detach(dev);
 return (ENXIO);
}
