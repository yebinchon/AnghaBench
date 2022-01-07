
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sdma_softc {int sc_active_channels; int sc_hw_rev; int * sc_irq_res; int sc_dev; int * sc_mem_res; } ;
typedef int device_t ;


 int DMA4_IRQENABLE_L (unsigned int) ;
 int DMA4_OCP_SYSCONFIG ;
 int DMA4_REVISION ;
 int DMA4_SYSSTATUS ;
 int EINVAL ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 unsigned int NUM_DMA_IRQS ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SDMA_CLK ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TI_SDMA_LOCK_INIT (struct ti_sdma_softc*) ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,int *,void**) ;
 int device_get_name (int ) ;
 struct ti_sdma_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int hz ;
 int panic (char*,...) ;
 int pause (char*,int) ;
 int ti_prcm_clk_enable (int ) ;
 int ti_sdma_intr ;
 scalar_t__ ti_sdma_is_omap3_rev (struct ti_sdma_softc*) ;
 int ti_sdma_is_omap4_rev (struct ti_sdma_softc*) ;
 int ti_sdma_read_4 (struct ti_sdma_softc*,int ) ;
 struct ti_sdma_softc* ti_sdma_sc ;
 int ti_sdma_write_4 (struct ti_sdma_softc*,int ,int) ;

__attribute__((used)) static int
ti_sdma_attach(device_t dev)
{
 struct ti_sdma_softc *sc = device_get_softc(dev);
 unsigned int timeout;
 unsigned int i;
 int rid;
 void *ihl;
 int err;


 sc->sc_dev = dev;


 sc->sc_active_channels = 0x00000000;


 TI_SDMA_LOCK_INIT(sc);


 rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (sc->sc_mem_res == ((void*)0))
  panic("%s: Cannot map registers", device_get_name(dev));


 ti_prcm_clk_enable(SDMA_CLK);


 sc->sc_hw_rev = ti_sdma_read_4(sc, DMA4_REVISION);
 device_printf(dev, "sDMA revision %08x\n", sc->sc_hw_rev);

 if (!ti_sdma_is_omap4_rev(sc) && !ti_sdma_is_omap3_rev(sc)) {
  device_printf(sc->sc_dev, "error - unknown sDMA H/W revision\n");
  return (EINVAL);
 }


 for (i = 0; i < NUM_DMA_IRQS; i++) {
  ti_sdma_write_4(sc, DMA4_IRQENABLE_L(i), 0x00000000);
 }


 if (ti_sdma_is_omap3_rev(sc)) {


  ti_sdma_write_4(sc, DMA4_OCP_SYSCONFIG, 0x0002);


  timeout = (hz < 10) ? 1 : ((100 * hz) / 1000);


  while ((ti_sdma_read_4(sc, DMA4_SYSSTATUS) & 0x1) == 0x0) {


   pause("DMARESET", 1);

   if (timeout-- == 0) {
    device_printf(sc->sc_dev, "sDMA reset operation timed out\n");
    return (EINVAL);
   }
  }
 }





 rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE | RF_SHAREABLE);
 if (sc->sc_irq_res == ((void*)0))
  panic("Unable to setup the dma irq handler.\n");

 err = bus_setup_intr(dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), ti_sdma_intr, ((void*)0), &ihl);
 if (err)
  panic("%s: Cannot register IRQ", device_get_name(dev));


 ti_sdma_sc = sc;

 return (0);
}
