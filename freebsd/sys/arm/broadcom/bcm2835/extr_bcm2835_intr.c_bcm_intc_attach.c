
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_intc_softc {int * intc_res; int intc_bsh; int intc_bst; int intc_irq_hdl; int * intc_irq_res; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int INTR_TYPE_CLK ;
 intptr_t OF_xref_from_node (int ) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bcm2835_intc_intr ;
 scalar_t__ bcm_intc_pic_register (struct bcm_intc_softc*,intptr_t) ;
 struct bcm_intc_softc* bcm_intc_sc ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int ,int ,int *,struct bcm_intc_softc*,int *) ;
 struct bcm_intc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ intr_pic_claim_root (int ,intptr_t,int ,struct bcm_intc_softc*,int ) ;
 int ofw_bus_get_node (int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
bcm_intc_attach(device_t dev)
{
 struct bcm_intc_softc *sc = device_get_softc(dev);
 int rid = 0;
 intptr_t xref;
 sc->sc_dev = dev;

 if (bcm_intc_sc)
  return (ENXIO);

 sc->intc_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (sc->intc_res == ((void*)0)) {
  device_printf(dev, "could not allocate memory resource\n");
  return (ENXIO);
 }

 xref = OF_xref_from_node(ofw_bus_get_node(dev));
 if (bcm_intc_pic_register(sc, xref) != 0) {
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->intc_res);
  device_printf(dev, "could not register PIC\n");
  return (ENXIO);
 }

 rid = 0;
 sc->intc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (sc->intc_irq_res == ((void*)0)) {
  if (intr_pic_claim_root(dev, xref, bcm2835_intc_intr, sc, 0) != 0) {

   device_printf(dev, "could not set PIC as a root\n");
   return (ENXIO);
  }
 } else {
  if (bus_setup_intr(dev, sc->intc_irq_res, INTR_TYPE_CLK,
      bcm2835_intc_intr, ((void*)0), sc, &sc->intc_irq_hdl)) {

   device_printf(dev, "could not setup irq handler\n");
   return (ENXIO);
  }
 }
 sc->intc_bst = rman_get_bustag(sc->intc_res);
 sc->intc_bsh = rman_get_bushandle(sc->intc_res);

 bcm_intc_sc = sc;

 return (0);
}
