
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usbss_softc {int * sc_mem_res; int sc_mem_rid; } ;
typedef int phandle_t ;
typedef int device_t ;


 int DELAY (int) ;
 int ENXIO ;
 int MUSB0_CLK ;
 int OF_child (int) ;
 int OF_peer (int) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int USBSS_READ4 (struct usbss_softc*,int ) ;
 int USBSS_REVREG ;
 int USBSS_SYSCONFIG ;
 int USBSS_SYSCONFIG_SRESET ;
 int USBSS_WRITE4 (struct usbss_softc*,int ,int) ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 struct usbss_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int ofw_bus_get_node (int ) ;
 int simplebus_add_device (int ,int,int ,int *,int,int *) ;
 int simplebus_init (int ,int) ;
 int ti_prcm_clk_enable (int ) ;
 int usbss_detach (int ) ;

__attribute__((used)) static int
usbss_attach(device_t dev)
{
 struct usbss_softc *sc = device_get_softc(dev);
 int i;
 uint32_t rev;
 phandle_t node;


 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->sc_mem_rid, RF_ACTIVE);
 if (sc->sc_mem_res == ((void*)0)) {
  device_printf(dev,
      "Error: could not allocate mem resources\n");
  return (ENXIO);
 }


 ti_prcm_clk_enable(MUSB0_CLK);






 USBSS_WRITE4(sc, USBSS_SYSCONFIG, USBSS_SYSCONFIG_SRESET);
 DELAY(100);
 i = 10;
 while (USBSS_READ4(sc, USBSS_SYSCONFIG) & USBSS_SYSCONFIG_SRESET) {
  DELAY(100);
  if (i-- == 0) {
   device_printf(dev, "reset timeout.\n");
   return (ENXIO);
  }
 }


 rev = USBSS_READ4(sc, USBSS_REVREG);
 device_printf(dev, "TI AM335X USBSS v%d.%d.%d\n",
     (rev >> 8) & 7, (rev >> 6) & 3, rev & 63);

 node = ofw_bus_get_node(dev);

 if (node == -1) {
  usbss_detach(dev);
  return (ENXIO);
 }

 simplebus_init(dev, node);




 bus_generic_probe(dev);




 for (node = OF_child(node); node > 0; node = OF_peer(node))
  simplebus_add_device(dev, node, 0, ((void*)0), -1, ((void*)0));

 return (bus_generic_attach(dev));
}
