
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gic_intrhand; int ** gic_res; int gic_bus; } ;
struct arm_gic_fdt_softc {TYPE_1__ base; } ;
typedef intptr_t phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int GIC_BUS_FDT ;
 scalar_t__ GIC_FIRST_SGI ;
 scalar_t__ GIC_LAST_SGI ;
 int INTR_TYPE_CLK ;
 int OF_device_register_xref (intptr_t,int ) ;
 intptr_t OF_xref_from_node (int ) ;
 scalar_t__ arm_gic_add_children (int ) ;
 int arm_gic_attach (int ) ;
 int arm_gic_detach (int ) ;
 int arm_gic_intr ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 scalar_t__ bus_setup_intr (int ,int *,int ,int ,int *,struct arm_gic_fdt_softc*,int *) ;
 struct arm_gic_fdt_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ intr_pic_claim_root (int ,intptr_t,int ,struct arm_gic_fdt_softc*,scalar_t__) ;
 int intr_pic_deregister (int ,intptr_t) ;
 int * intr_pic_register (int ,intptr_t) ;
 intptr_t ofw_bus_find_iparent (int ) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
gic_fdt_attach(device_t dev)
{
 struct arm_gic_fdt_softc *sc = device_get_softc(dev);
 phandle_t pxref;
 intptr_t xref;
 int err;

 sc->base.gic_bus = GIC_BUS_FDT;

 err = arm_gic_attach(dev);
 if (err != 0)
  return (err);

 xref = OF_xref_from_node(ofw_bus_get_node(dev));





 if (intr_pic_register(dev, xref) == ((void*)0)) {
  device_printf(dev, "could not register PIC\n");
  goto cleanup;
 }






 pxref = ofw_bus_find_iparent(ofw_bus_get_node(dev));
 if (pxref == 0 || xref == pxref) {
  if (intr_pic_claim_root(dev, xref, arm_gic_intr, sc,
      GIC_LAST_SGI - GIC_FIRST_SGI + 1) != 0) {
   device_printf(dev, "could not set PIC as a root\n");
   intr_pic_deregister(dev, xref);
   goto cleanup;
  }
 } else {
  if (sc->base.gic_res[2] == ((void*)0)) {
   device_printf(dev,
       "not root PIC must have defined interrupt\n");
   intr_pic_deregister(dev, xref);
   goto cleanup;
  }
  if (bus_setup_intr(dev, sc->base.gic_res[2], INTR_TYPE_CLK,
      arm_gic_intr, ((void*)0), sc, &sc->base.gic_intrhand)) {
   device_printf(dev, "could not setup irq handler\n");
   intr_pic_deregister(dev, xref);
   goto cleanup;
  }
 }

 OF_device_register_xref(xref, dev);


 if (arm_gic_add_children(dev)) {
  bus_generic_probe(dev);
  return (bus_generic_attach(dev));
 }

 return (0);

cleanup:
 arm_gic_detach(dev);
 return(ENXIO);
}
