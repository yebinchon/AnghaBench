
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int dma_bits; int bdev; int devices_max; int devices; int parent; } ;
struct TYPE_6__ {scalar_t__ sc_id; scalar_t__ sc_mode; TYPE_1__ sc_bus; struct musbotg_super_softc* sc_platform_data; int * sc_intr_hdl; int * sc_irq_res; int sc_io_res; int sc_io_size; int sc_io_hdl; int sc_io_tag; int sc_devices; int sc_ep_int_set; struct TYPE_6__* sc_clocks_arg; int * sc_clocks_off; int * sc_clocks_on; } ;
struct musbotg_super_softc {TYPE_2__ sc_otg; int * sc_mem_res; int sc_irq_rid; } ;
typedef int mode ;
typedef int driver_intr_t ;
typedef int device_t ;


 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 void* MUSB2_DEVICE_MODE ;
 scalar_t__ MUSB2_HOST_MODE ;
 int MUSB2_MAX_DEVICES ;
 scalar_t__ OF_getprop (int ,char*,char*,int) ;
 size_t RES_USBCORE ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int USBCTRL_INTEN_CLR0 ;
 int USBCTRL_INTEN_SET1 ;
 int USBCTRL_INTEN_USB_ALL ;
 int USBCTRL_INTEN_USB_SOF ;
 int USBCTRL_MODE ;
 int USBCTRL_MODE_IDDIG ;
 int USBCTRL_MODE_IDDIGMUX ;
 int USBCTRL_READ4 (struct musbotg_super_softc*,int ) ;
 int USBCTRL_UTMI ;
 int USBCTRL_UTMI_FSDATAEXT ;
 int USBCTRL_WRITE4 (struct musbotg_super_softc*,int ,int) ;
 int USB_GET_DMA_TAG (int ) ;
 int am335x_musbotg_mem_spec ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 int bus_alloc_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int *,int,int *,int *,TYPE_2__*,int **) ;
 int device_add_child (int ,char*,int) ;
 struct musbotg_super_softc* device_get_softc (int ) ;
 scalar_t__ device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int device_probe_and_attach (int ) ;
 int device_set_ivars (int ,TYPE_1__*) ;
 int musbotg_clocks_off ;
 int musbotg_clocks_on ;
 int musbotg_detach (int ) ;
 int musbotg_ep_int_set ;
 int musbotg_init (TYPE_2__*) ;
 int musbotg_vbus_poll (struct musbotg_super_softc*) ;
 scalar_t__ musbotg_wrapper_interrupt ;
 int ofw_bus_get_node (int ) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 int rman_get_size (int ) ;
 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ usb_bus_mem_alloc_all (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int
musbotg_attach(device_t dev)
{
 struct musbotg_super_softc *sc = device_get_softc(dev);
 char mode[16];
 int err;
 uint32_t reg;

 sc->sc_otg.sc_id = device_get_unit(dev);


 err = bus_alloc_resources(dev, am335x_musbotg_mem_spec,
  sc->sc_mem_res);
 if (err) {
  device_printf(dev,
      "Error: could not allocate mem resources\n");
  return (ENXIO);
 }


 sc->sc_otg.sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ,
     &sc->sc_irq_rid, RF_ACTIVE);
 if (sc->sc_otg.sc_irq_res == ((void*)0)) {
  device_printf(dev,
      "Error: could not allocate irq resources\n");
  return (ENXIO);
 }


 sc->sc_otg.sc_clocks_on = &musbotg_clocks_on;
 sc->sc_otg.sc_clocks_off = &musbotg_clocks_off;
 sc->sc_otg.sc_clocks_arg = &sc->sc_otg;

 sc->sc_otg.sc_ep_int_set = musbotg_ep_int_set;


 sc->sc_otg.sc_bus.parent = dev;
 sc->sc_otg.sc_bus.devices = sc->sc_otg.sc_devices;
 sc->sc_otg.sc_bus.devices_max = MUSB2_MAX_DEVICES;
 sc->sc_otg.sc_bus.dma_bits = 32;


 if (usb_bus_mem_alloc_all(&sc->sc_otg.sc_bus,
     USB_GET_DMA_TAG(dev), ((void*)0))) {
  device_printf(dev,
      "Failed allocate bus mem for musb\n");
  return (ENOMEM);
 }
 sc->sc_otg.sc_io_res = sc->sc_mem_res[RES_USBCORE];
 sc->sc_otg.sc_io_tag =
     rman_get_bustag(sc->sc_otg.sc_io_res);
 sc->sc_otg.sc_io_hdl =
     rman_get_bushandle(sc->sc_otg.sc_io_res);
 sc->sc_otg.sc_io_size =
     rman_get_size(sc->sc_otg.sc_io_res);

 sc->sc_otg.sc_bus.bdev = device_add_child(dev, "usbus", -1);
 if (!(sc->sc_otg.sc_bus.bdev)) {
  device_printf(dev, "No busdev for musb\n");
  goto error;
 }
 device_set_ivars(sc->sc_otg.sc_bus.bdev,
     &sc->sc_otg.sc_bus);

 err = bus_setup_intr(dev, sc->sc_otg.sc_irq_res,
     INTR_TYPE_BIO | INTR_MPSAFE,
     ((void*)0), (driver_intr_t *)musbotg_wrapper_interrupt,
     &sc->sc_otg, &sc->sc_otg.sc_intr_hdl);
 if (err) {
  sc->sc_otg.sc_intr_hdl = ((void*)0);
  device_printf(dev,
      "Failed to setup interrupt for musb\n");
  goto error;
 }

 sc->sc_otg.sc_platform_data = sc;
 if (OF_getprop(ofw_bus_get_node(dev), "dr_mode", mode,
     sizeof(mode)) > 0) {
  if (strcasecmp(mode, "host") == 0)
   sc->sc_otg.sc_mode = MUSB2_HOST_MODE;
  else
   sc->sc_otg.sc_mode = MUSB2_DEVICE_MODE;
 } else {

  if (sc->sc_otg.sc_id == 0)
   sc->sc_otg.sc_mode = MUSB2_DEVICE_MODE;
  else
   sc->sc_otg.sc_mode = MUSB2_HOST_MODE;
 }





 if (sc->sc_otg.sc_mode == MUSB2_HOST_MODE) {
  reg = USBCTRL_READ4(sc, USBCTRL_MODE);
  reg |= USBCTRL_MODE_IDDIGMUX;
  reg &= ~USBCTRL_MODE_IDDIG;
  USBCTRL_WRITE4(sc, USBCTRL_MODE, reg);
  USBCTRL_WRITE4(sc, USBCTRL_UTMI,
      USBCTRL_UTMI_FSDATAEXT);
 } else {
  reg = USBCTRL_READ4(sc, USBCTRL_MODE);
  reg |= USBCTRL_MODE_IDDIGMUX;
  reg |= USBCTRL_MODE_IDDIG;
  USBCTRL_WRITE4(sc, USBCTRL_MODE, reg);
 }

 reg = USBCTRL_INTEN_USB_ALL & ~USBCTRL_INTEN_USB_SOF;
 USBCTRL_WRITE4(sc, USBCTRL_INTEN_SET1, reg);
 USBCTRL_WRITE4(sc, USBCTRL_INTEN_CLR0, 0xffffffff);

 err = musbotg_init(&sc->sc_otg);
 if (!err)
  err = device_probe_and_attach(sc->sc_otg.sc_bus.bdev);

 if (err)
  goto error;


 musbotg_vbus_poll(sc);

 return (0);

error:
 musbotg_detach(dev);
 return (ENXIO);
}
