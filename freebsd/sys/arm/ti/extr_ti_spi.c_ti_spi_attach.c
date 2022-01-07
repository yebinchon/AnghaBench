
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_spi_softc {int sc_numcs; int sc_mtx; void* sc_mem_res; void* sc_irq_res; int sc_intrhand; int sc_bsh; int sc_bst; int sc_dev; } ;
typedef int device_t ;


 int DELAY (int) ;
 int EINVAL ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int INVALID_CLK_IDENT ;
 int MCSPI_CONF_CH (int) ;
 int MCSPI_CONF_DPE0 ;
 int MCSPI_CONF_EPOL ;
 int MCSPI_CONF_WL_SHIFT ;
 int MCSPI_IRQENABLE ;
 int MCSPI_IRQSTATUS ;
 int MCSPI_MODULCTRL ;
 int MCSPI_MODULCTRL_SINGLE ;
 int MCSPI_REVISION ;
 int MCSPI_REVISION_CUSTOM_MSK ;
 int MCSPI_REVISION_CUSTOM_SHIFT ;
 int MCSPI_REVISION_FUNC_MSK ;
 int MCSPI_REVISION_FUNC_SHIFT ;
 int MCSPI_REVISION_MAJOR_MSK ;
 int MCSPI_REVISION_MAJOR_SHIFT ;
 int MCSPI_REVISION_MINOR_MSK ;
 int MCSPI_REVISION_MINOR_SHIFT ;
 int MCSPI_REVISION_RTL_MSK ;
 int MCSPI_REVISION_RTL_SHIFT ;
 int MCSPI_REVISION_SCHEME_MSK ;
 int MCSPI_REVISION_SCHEME_SHIFT ;
 int MCSPI_SYSCONFIG ;
 int MCSPI_SYSCONFIG_SOFTRESET ;
 int MCSPI_SYSSTATUS ;
 int MCSPI_SYSSTATUS_RESETDONE ;
 int MTX_DEF ;
 scalar_t__ OF_getencprop (int ,char*,int*,int) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TI_SPI_READ (struct ti_spi_softc*,int ) ;
 int TI_SPI_WRITE (struct ti_spi_softc*,int ,int) ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_generic_attach (int ) ;
 int bus_release_resource (int ,int ,int ,void*) ;
 scalar_t__ bus_setup_intr (int ,void*,int,int *,int ,struct ti_spi_softc*,int *) ;
 int device_add_child (int ,char*,int) ;
 struct ti_spi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ofw_bus_get_node (int ) ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;
 int ti_hwmods_get_clock (int ) ;
 int ti_prcm_clk_enable (int) ;
 int ti_spi_detach (int ) ;
 int ti_spi_intr ;
 int ti_spi_printr (int ) ;
 int ti_spi_set_clock (struct ti_spi_softc*,int,int) ;

__attribute__((used)) static int
ti_spi_attach(device_t dev)
{
 int clk_id, err, i, rid, timeout;
 struct ti_spi_softc *sc;
 uint32_t rev;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;







 clk_id = ti_hwmods_get_clock(dev);
 if (clk_id == INVALID_CLK_IDENT) {
  device_printf(dev,
      "failed to get clock based on hwmods property\n");
  return (EINVAL);
 }


 err = ti_prcm_clk_enable(clk_id);
 if (err) {
  device_printf(dev, "Error: failed to activate source clock\n");
  return (err);
 }


 if ((OF_getencprop(ofw_bus_get_node(dev), "ti,spi-num-cs",
     &sc->sc_numcs, sizeof(sc->sc_numcs))) <= 0) {
  sc->sc_numcs = 2;
 }

 rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->sc_mem_res) {
  device_printf(dev, "cannot allocate memory window\n");
  return (ENXIO);
 }

 sc->sc_bst = rman_get_bustag(sc->sc_mem_res);
 sc->sc_bsh = rman_get_bushandle(sc->sc_mem_res);

 rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (!sc->sc_irq_res) {
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
  device_printf(dev, "cannot allocate interrupt\n");
  return (ENXIO);
 }


 if (bus_setup_intr(dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), ti_spi_intr, sc, &sc->sc_intrhand)) {
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
  device_printf(dev, "cannot setup the interrupt handler\n");
  return (ENXIO);
 }

 mtx_init(&sc->sc_mtx, "ti_spi", ((void*)0), MTX_DEF);


 TI_SPI_WRITE(sc, MCSPI_SYSCONFIG, MCSPI_SYSCONFIG_SOFTRESET);
 timeout = 1000;
 while (!(TI_SPI_READ(sc, MCSPI_SYSSTATUS) &
     MCSPI_SYSSTATUS_RESETDONE)) {
  if (--timeout == 0) {
   device_printf(dev,
       "Error: Controller reset operation timed out\n");
   ti_spi_detach(dev);
   return (ENXIO);
  }
  DELAY(100);
 }


 rev = TI_SPI_READ(sc, MCSPI_REVISION);
 device_printf(dev,
     "scheme: %#x func: %#x rtl: %d rev: %d.%d custom rev: %d\n",
     (rev >> MCSPI_REVISION_SCHEME_SHIFT) & MCSPI_REVISION_SCHEME_MSK,
     (rev >> MCSPI_REVISION_FUNC_SHIFT) & MCSPI_REVISION_FUNC_MSK,
     (rev >> MCSPI_REVISION_RTL_SHIFT) & MCSPI_REVISION_RTL_MSK,
     (rev >> MCSPI_REVISION_MAJOR_SHIFT) & MCSPI_REVISION_MAJOR_MSK,
     (rev >> MCSPI_REVISION_MINOR_SHIFT) & MCSPI_REVISION_MINOR_MSK,
     (rev >> MCSPI_REVISION_CUSTOM_SHIFT) & MCSPI_REVISION_CUSTOM_MSK);


 TI_SPI_WRITE(sc, MCSPI_MODULCTRL, MCSPI_MODULCTRL_SINGLE);


 TI_SPI_WRITE(sc, MCSPI_IRQENABLE, 0x0);
 TI_SPI_WRITE(sc, MCSPI_IRQSTATUS, 0xffff);

 for (i = 0; i < sc->sc_numcs; i++) {




  TI_SPI_WRITE(sc, MCSPI_CONF_CH(i),
      MCSPI_CONF_DPE0 | MCSPI_CONF_EPOL |
      (8 - 1) << MCSPI_CONF_WL_SHIFT);

  ti_spi_set_clock(sc, i, 500000);
 }





 device_add_child(dev, "spibus", -1);

 return (bus_generic_attach(dev));
}
