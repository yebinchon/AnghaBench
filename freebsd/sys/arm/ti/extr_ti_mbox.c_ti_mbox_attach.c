
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_mbox_softc {int sc_intr; int * sc_irq_res; int * sc_mem_res; int sc_bh; int sc_bt; int sc_mtx; } ;
typedef int device_t ;


 int DELAY (int) ;
 int DPRINTF (char*,int) ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MAILBOX0_CLK ;
 int MTX_DEF ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TI_MBOX_IRQENABLE_SET (int) ;
 int TI_MBOX_REVISION ;
 int TI_MBOX_SYSCONFIG ;
 int TI_MBOX_SYSCONFIG_SMARTIDLE ;
 int TI_MBOX_SYSCONFIG_SOFTRST ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,struct ti_mbox_softc*,int *) ;
 struct ti_mbox_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int mtx_init (int *,char*,int *,int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int ti_mbox_detach (int ) ;
 int ti_mbox_intr ;
 int ti_mbox_reg_read (struct ti_mbox_softc*,int ) ;
 int ti_mbox_reg_write (struct ti_mbox_softc*,int ,int) ;
 scalar_t__ ti_prcm_clk_enable (int ) ;

__attribute__((used)) static int
ti_mbox_attach(device_t dev)
{
 struct ti_mbox_softc *sc;
 int rid, delay, chan;
 uint32_t rev, sysconfig;

 if (ti_prcm_clk_enable(MAILBOX0_CLK) != 0) {
  device_printf(dev, "could not enable MBOX clock\n");
  return (ENXIO);
 }
 sc = device_get_softc(dev);
 rid = 0;
 mtx_init(&sc->sc_mtx, "TI mbox", ((void*)0), MTX_DEF);
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->sc_mem_res == ((void*)0)) {
  device_printf(dev, "could not allocate memory resource\n");
  return (ENXIO);
 }
 sc->sc_bt = rman_get_bustag(sc->sc_mem_res);
 sc->sc_bh = rman_get_bushandle(sc->sc_mem_res);
 rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (sc->sc_irq_res == ((void*)0)) {
  device_printf(dev, "could not allocate interrupt resource\n");
  ti_mbox_detach(dev);
  return (ENXIO);
 }
 if (bus_setup_intr(dev, sc->sc_irq_res, INTR_MPSAFE | INTR_TYPE_MISC,
     ((void*)0), ti_mbox_intr, sc, &sc->sc_intr) != 0) {
  device_printf(dev, "unable to setup the interrupt handler\n");
  ti_mbox_detach(dev);
  return (ENXIO);
 }



 sysconfig = ti_mbox_reg_read(sc, TI_MBOX_SYSCONFIG);
 DPRINTF("initial sysconfig %d\n", sysconfig);
 sysconfig |= TI_MBOX_SYSCONFIG_SOFTRST;
 delay = 100;
 while (ti_mbox_reg_read(sc, TI_MBOX_SYSCONFIG) &
     TI_MBOX_SYSCONFIG_SOFTRST) {
  delay--;
  DELAY(10);
 }
 if (delay == 0) {
  device_printf(dev, "controller reset failed\n");
  ti_mbox_detach(dev);
  return (ENXIO);
 }



 ti_mbox_reg_write(sc, TI_MBOX_SYSCONFIG,
     ti_mbox_reg_read(sc, TI_MBOX_SYSCONFIG) | TI_MBOX_SYSCONFIG_SMARTIDLE);
 rev = ti_mbox_reg_read(sc, TI_MBOX_REVISION);
 DPRINTF("rev %d\n", rev);
 device_printf(dev, "revision %d.%d\n", (rev >> 8) & 0x4, rev & 0x40);



 for (chan = 0; chan < 8; chan++)
  ti_mbox_reg_write(sc, TI_MBOX_IRQENABLE_SET(chan), 1);

 return (0);
}
