
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_wdt_softc {int sc_ev_tag; int sc_intr; int * sc_irq_res; int * sc_mem_res; int sc_bh; int sc_bt; } ;
typedef int device_t ;


 int DELAY (int) ;
 int ENXIO ;
 int EVENTHANDLER_REGISTER (int ,int ,struct ti_wdt_softc*,int ) ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TI_IRQ_EN_DLY ;
 int TI_IRQ_EN_OVF ;
 int TI_WDSC_SR ;
 int TI_WDT_WDSC ;
 int TI_WDT_WIDR ;
 int TI_WDT_WIRQENSET ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,struct ti_wdt_softc*,int *) ;
 struct ti_wdt_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int ti_wdt_detach (int ) ;
 int ti_wdt_disable (struct ti_wdt_softc*) ;
 int ti_wdt_event ;
 int ti_wdt_intr ;
 int ti_wdt_reg_read (struct ti_wdt_softc*,int ) ;
 int ti_wdt_reg_write (struct ti_wdt_softc*,int ,int) ;
 int watchdog_list ;

__attribute__((used)) static int
ti_wdt_attach(device_t dev)
{
 struct ti_wdt_softc *sc;
 int rid;

 sc = device_get_softc(dev);
 rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->sc_mem_res == ((void*)0)) {
  device_printf(dev, "could not allocate memory resource\n");
  return (ENXIO);
 }
 sc->sc_bt = rman_get_bustag(sc->sc_mem_res);
 sc->sc_bh = rman_get_bushandle(sc->sc_mem_res);
 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
 if (sc->sc_irq_res == ((void*)0)) {
  device_printf(dev, "could not allocate interrupt resource\n");
  ti_wdt_detach(dev);
  return (ENXIO);
 }
 if (bus_setup_intr(dev, sc->sc_irq_res, INTR_MPSAFE | INTR_TYPE_MISC,
  ((void*)0), ti_wdt_intr, sc, &sc->sc_intr) != 0) {
  device_printf(dev,
      "unable to setup the interrupt handler\n");
  ti_wdt_detach(dev);
  return (ENXIO);
 }

 ti_wdt_reg_write(sc, TI_WDT_WDSC,
     ti_wdt_reg_read(sc, TI_WDT_WDSC) | TI_WDSC_SR);
 while (ti_wdt_reg_read(sc, TI_WDT_WDSC) & TI_WDSC_SR)
  DELAY(10);
 ti_wdt_reg_write(sc, TI_WDT_WIRQENSET, TI_IRQ_EN_OVF | TI_IRQ_EN_DLY);
 ti_wdt_disable(sc);
 if (bootverbose)
  device_printf(dev, "revision: 0x%x\n",
      ti_wdt_reg_read(sc, TI_WDT_WIDR));
 sc->sc_ev_tag = EVENTHANDLER_REGISTER(watchdog_list, ti_wdt_event, sc,
     0);

 return (0);
}
