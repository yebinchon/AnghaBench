
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int dma_bits; int * bdev; int devices_max; int devices; void* parent; } ;
struct TYPE_6__ {int sc_flags; int sc_intr_hdl; TYPE_2__ sc_bus; int sc_vendor_get_port_speed; int sc_vendor_post_reset; void* sc_io_hdl; void* sc_io_tag; int sc_vendor; int sc_io_size; int sc_devices; } ;
struct vybrid_ehci_softc {int * res; void* bsh_phy; void* bst_phy; void* bsh_usbc; void* bst_usbc; TYPE_1__ base; void* dev; } ;
typedef TYPE_1__ ehci_softc_t ;
typedef int driver_intr_t ;
typedef void* device_t ;
typedef void* bus_space_handle_t ;


 int EHCI_MAX_DEVICES ;
 int EHCI_SCFLG_DONEINIT ;
 int EHCI_SCFLG_NORESTERM ;
 int EHCI_SCFLG_TT ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int USB_GET_DMA_TAG (void*) ;
 int USB_HCSPARAMS ;
 int USB_HWDEVICE ;
 int USB_HWGENERAL ;
 int USB_HWHOST ;
 int USB_HWRXBUF ;
 int USB_HWTXBUF ;
 int USB_ID ;
 scalar_t__ bus_alloc_resources (void*,int ,int *) ;
 int bus_setup_intr (void*,int ,int,int *,int *,TYPE_1__*,int *) ;
 int bus_space_read_4 (void*,void*,int) ;
 int bus_space_subregion (void*,void*,int,int ,void**) ;
 int bus_space_write_4 (void*,void*,int,int) ;
 int bus_teardown_intr (void*,int ,int ) ;
 int * device_add_child (void*,char*,int) ;
 int device_delete_child (void*,int *) ;
 struct vybrid_ehci_softc* device_get_softc (void*) ;
 int device_printf (void*,char*,...) ;
 int device_probe_and_attach (int *) ;
 int device_set_ivars (int *,TYPE_2__*) ;
 int ehci_get_port_speed_portsc ;
 int ehci_init (TYPE_1__*) ;
 scalar_t__ ehci_interrupt ;
 int ehci_iterate_hw_softc ;
 scalar_t__ phy_init (struct vybrid_ehci_softc*) ;
 int printf (char*,int) ;
 void* rman_get_bushandle (int ) ;
 void* rman_get_bustag (int ) ;
 int rman_get_size (int ) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ usb_bus_mem_alloc_all (TYPE_2__*,int ,int *) ;
 int vybrid_ehci_post_reset ;
 int vybrid_ehci_spec ;

__attribute__((used)) static int
vybrid_ehci_attach(device_t dev)
{
 struct vybrid_ehci_softc *esc;
 ehci_softc_t *sc;
 bus_space_handle_t bsh;
 int err;
 int reg;

 esc = device_get_softc(dev);
 esc->dev = dev;

 sc = &esc->base;
 sc->sc_bus.parent = dev;
 sc->sc_bus.devices = sc->sc_devices;
 sc->sc_bus.devices_max = EHCI_MAX_DEVICES;
 sc->sc_bus.dma_bits = 32;

 if (bus_alloc_resources(dev, vybrid_ehci_spec, esc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->sc_io_tag = rman_get_bustag(esc->res[0]);
 bsh = rman_get_bushandle(esc->res[0]);
 sc->sc_io_size = rman_get_size(esc->res[0]);

 esc->bst_usbc = rman_get_bustag(esc->res[1]);
 esc->bsh_usbc = rman_get_bushandle(esc->res[1]);

 esc->bst_phy = rman_get_bustag(esc->res[2]);
 esc->bsh_phy = rman_get_bushandle(esc->res[2]);


 if (usb_bus_mem_alloc_all(&sc->sc_bus, USB_GET_DMA_TAG(dev),
  &ehci_iterate_hw_softc))
  return (ENXIO);
 if (phy_init(esc)) {
  device_printf(dev, "Could not setup PHY\n");
  return (1);
 }





 err = bus_space_subregion(sc->sc_io_tag, bsh, 0x100,
     sc->sc_io_size, &sc->sc_io_hdl);
 if (err != 0)
  return (ENXIO);


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
  err = bus_teardown_intr(dev, esc->res[5],
      sc->sc_intr_hdl);
  if (err)
   device_printf(dev, "Could not tear down irq,"
       " %d\n", err);
  return (1);
 }
 device_set_ivars(sc->sc_bus.bdev, &sc->sc_bus);

 strlcpy(sc->sc_vendor, "Freescale", sizeof(sc->sc_vendor));


 reg = bus_space_read_4(sc->sc_io_tag, sc->sc_io_hdl, 0xA8);
 reg |= 0x3;
 bus_space_write_4(sc->sc_io_tag, sc->sc_io_hdl, 0xA8, reg);


 sc->sc_flags |= EHCI_SCFLG_TT | EHCI_SCFLG_NORESTERM;
 sc->sc_vendor_post_reset = vybrid_ehci_post_reset;
 sc->sc_vendor_get_port_speed = ehci_get_port_speed_portsc;

 err = ehci_init(sc);
 if (!err) {
  sc->sc_flags |= EHCI_SCFLG_DONEINIT;
  err = device_probe_and_attach(sc->sc_bus.bdev);
 } else {
  device_printf(dev, "USB init failed err=%d\n", err);

  device_delete_child(dev, sc->sc_bus.bdev);
  sc->sc_bus.bdev = ((void*)0);

  err = bus_teardown_intr(dev, esc->res[5],
      sc->sc_intr_hdl);
  if (err)
   device_printf(dev, "Could not tear down irq,"
       " %d\n", err);
  return (1);
 }
 return (0);
}
