
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * bdev; } ;
struct TYPE_6__ {TYPE_4__ sc_bus; int sc_vendor; int * sc_intr_hdl; int sc_io_hdl; int sc_io_size; void* sc_io_tag; } ;
struct exynos_xhci_softc {TYPE_1__ base; int * res; void* bsh; void* bst; int dev; } ;
typedef int driver_intr_t ;
typedef int device_t ;
typedef void* bus_space_handle_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int *,int *,TYPE_1__*,int **) ;
 int bus_space_subregion (void*,void*,int,int ,int *) ;
 int * device_add_child (int ,char*,int) ;
 struct exynos_xhci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_probe_and_attach (int *) ;
 int device_set_ivars (int *,TYPE_4__*) ;
 int dwc3_init (struct exynos_xhci_softc*) ;
 int exynos_xhci_detach (int ) ;
 int exynos_xhci_spec ;
 void* rman_get_bushandle (int ) ;
 void* rman_get_bustag (int ) ;
 int rman_get_size (int ) ;
 int strlcpy (int ,char*,int) ;
 int xhci_halt_controller (TYPE_1__*) ;
 scalar_t__ xhci_init (TYPE_1__*,int ,int ) ;
 scalar_t__ xhci_interrupt ;
 int xhci_start_controller (TYPE_1__*) ;

__attribute__((used)) static int
exynos_xhci_attach(device_t dev)
{
 struct exynos_xhci_softc *esc = device_get_softc(dev);
 bus_space_handle_t bsh;
 int err;

 esc->dev = dev;

 if (bus_alloc_resources(dev, exynos_xhci_spec, esc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 esc->base.sc_io_tag = rman_get_bustag(esc->res[0]);
 bsh = rman_get_bushandle(esc->res[0]);
 esc->base.sc_io_size = rman_get_size(esc->res[0]);


 esc->bst = rman_get_bustag(esc->res[1]);
 esc->bsh = rman_get_bushandle(esc->res[1]);





 err = bus_space_subregion(esc->base.sc_io_tag, bsh, 0x0,
     esc->base.sc_io_size, &esc->base.sc_io_hdl);
 if (err != 0) {
  device_printf(dev, "Subregion failed\n");
  bus_release_resources(dev, exynos_xhci_spec, esc->res);
  return (ENXIO);
 }

 if (xhci_init(&esc->base, dev, 0)) {
  device_printf(dev, "Could not initialize softc\n");
  bus_release_resources(dev, exynos_xhci_spec, esc->res);
  return (ENXIO);
 }


 err = bus_setup_intr(dev, esc->res[2], INTR_TYPE_BIO | INTR_MPSAFE,
     ((void*)0), (driver_intr_t *)xhci_interrupt, &esc->base,
     &esc->base.sc_intr_hdl);
 if (err) {
  device_printf(dev, "Could not setup irq, %d\n", err);
  esc->base.sc_intr_hdl = ((void*)0);
  goto error;
 }


 esc->base.sc_bus.bdev = device_add_child(dev, "usbus", -1);
 if (esc->base.sc_bus.bdev == ((void*)0)) {
  device_printf(dev, "Could not add USB device\n");
  goto error;
 }
 device_set_ivars(esc->base.sc_bus.bdev, &esc->base.sc_bus);
 strlcpy(esc->base.sc_vendor, "Samsung", sizeof(esc->base.sc_vendor));

 dwc3_init(esc);

 err = xhci_halt_controller(&esc->base);
 if (err == 0) {
  device_printf(dev, "Starting controller\n");
  err = xhci_start_controller(&esc->base);
 }
 if (err == 0) {
  device_printf(dev, "Controller started\n");
  err = device_probe_and_attach(esc->base.sc_bus.bdev);
 }
 if (err != 0)
  goto error;
 return (0);

error:
 exynos_xhci_detach(dev);
 return (ENXIO);
}
