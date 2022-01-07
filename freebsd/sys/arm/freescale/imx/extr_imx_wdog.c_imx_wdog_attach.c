
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timeout ;
struct imx_wdog_softc {int sc_pde_enabled; int sc_dev; int sc_ih; int * sc_res; int sc_mtx; } ;
typedef int pcell_t ;
typedef int device_t ;


 int ENXIO ;
 int EVENTHANDLER_REGISTER (int ,int ,struct imx_wdog_softc*,int ) ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 size_t IRQRES ;
 int MTX_DEF ;
 int OF_getencprop (int ,char*,int*,int) ;
 int RD2 (struct imx_wdog_softc*,int ) ;
 int WDOG_CR_REG ;
 int WDOG_CR_WDT ;
 int WDOG_ICR_REG ;
 int WDOG_ICR_WIE ;
 int WDOG_MCR_PDE ;
 int WDOG_MCR_REG ;
 int WR2 (struct imx_wdog_softc*,int ,int) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int ,int *,struct imx_wdog_softc*,int *) ;
 int device_busy (int ) ;
 int device_get_nameunit (int ) ;
 struct imx_wdog_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int imx_watchdog ;
 int imx_wdog_enable (struct imx_wdog_softc*,int) ;
 int imx_wdog_intr ;
 int imx_wdog_spec ;
 int mtx_init (int *,int ,char*,int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ ofw_bus_has_prop (int ,char*) ;
 int watchdog_list ;

__attribute__((used)) static int
imx_wdog_attach(device_t dev)
{
 struct imx_wdog_softc *sc;
 pcell_t timeout;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 if (bus_alloc_resources(dev, imx_wdog_spec, sc->sc_res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }

 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), "imx_wdt", MTX_DEF);







 if (ofw_bus_has_prop(sc->sc_dev, "fsl,ext-reset-output")) {
  WR2(sc, WDOG_CR_REG, WDOG_CR_WDT | RD2(sc, WDOG_CR_REG));
  bus_setup_intr(sc->sc_dev, sc->sc_res[IRQRES],
      INTR_TYPE_MISC | INTR_MPSAFE, imx_wdog_intr, ((void*)0), sc,
      &sc->sc_ih);
  WR2(sc, WDOG_ICR_REG, WDOG_ICR_WIE);
 }





 if (RD2(sc, WDOG_MCR_REG) & WDOG_MCR_PDE)
  sc->sc_pde_enabled = 1;

 EVENTHANDLER_REGISTER(watchdog_list, imx_watchdog, sc, 0);


 if (OF_getencprop(ofw_bus_get_node(sc->sc_dev), "timeout-sec",
     &timeout, sizeof(timeout)) == sizeof(timeout)) {
  if (timeout < 1 || timeout > 128) {
   device_printf(sc->sc_dev, "ERROR: bad timeout-sec "
       "property value %u, using 128\n", timeout);
   timeout = 128;
  }
  imx_wdog_enable(sc, timeout);
  device_printf(sc->sc_dev, "watchdog enabled using "
      "timeout-sec property value %u\n", timeout);
 }






 device_busy(sc->sc_dev);
 return (0);
}
