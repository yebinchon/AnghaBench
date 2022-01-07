
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ti_edma3_softc {int * ih_cookie; int * irq_res; int * mem_res; int sc_dev; } ;
typedef int device_t ;
struct TYPE_2__ {int description; int * handler; } ;


 int EDMA_TPCC_CLK ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int TI_EDMA3CC_PID ;
 int TI_EDMA3_NUM_IRQS ;
 int bus_alloc_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct ti_edma3_softc*,int *) ;
 struct ti_edma3_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int ti_edma3_cc_rd_4 (int ) ;
 TYPE_1__* ti_edma3_intrs ;
 int ti_edma3_irq_spec ;
 int ti_edma3_mem_spec ;
 struct ti_edma3_softc* ti_edma3_sc ;
 int ti_prcm_clk_enable (int ) ;

__attribute__((used)) static int
ti_edma3_attach(device_t dev)
{
 struct ti_edma3_softc *sc = device_get_softc(dev);
 uint32_t reg;
 int err;
 int i;

 if (ti_edma3_sc)
  return (ENXIO);

 ti_edma3_sc = sc;
 sc->sc_dev = dev;


 err = bus_alloc_resources(dev, ti_edma3_mem_spec, sc->mem_res);
 if (err) {
  device_printf(dev, "Error: could not allocate mem resources\n");
  return (ENXIO);
 }


 err = bus_alloc_resources(dev, ti_edma3_irq_spec, sc->irq_res);
 if (err) {
  device_printf(dev, "Error: could not allocate irq resources\n");
  return (ENXIO);
 }


 ti_prcm_clk_enable(EDMA_TPCC_CLK);

 reg = ti_edma3_cc_rd_4(TI_EDMA3CC_PID);

 device_printf(dev, "EDMA revision %08x\n", reg);



 for (i = 0; i < TI_EDMA3_NUM_IRQS; ++i) {
  err = bus_setup_intr(dev, sc->irq_res[i], INTR_TYPE_MISC |
      INTR_MPSAFE, ((void*)0), *ti_edma3_intrs[i].handler,
      sc, &sc->ih_cookie[i]);
  if (err) {
   device_printf(dev, "could not setup %s\n",
       ti_edma3_intrs[i].description);
   return (err);
  }
 }

 return (0);
}
