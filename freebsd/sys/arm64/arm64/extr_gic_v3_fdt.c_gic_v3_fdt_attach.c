
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nregions; } ;
struct gic_v3_softc {scalar_t__ gic_nchildren; int gic_children; int * gic_pic; TYPE_1__ gic_redists; int gic_bus; int dev; } ;
typedef int redist_regions ;
typedef int pcell_t ;
typedef int device_t ;


 int ENXIO ;
 int GIC_BUS_FDT ;
 scalar_t__ GIC_FIRST_SGI ;
 scalar_t__ GIC_LAST_SGI ;
 int OF_device_register_xref (intptr_t,int ) ;
 scalar_t__ OF_getencprop (int ,char*,int*,int) ;
 intptr_t OF_xref_from_node (int ) ;
 int arm_gic_v3_intr ;
 scalar_t__ bootverbose ;
 scalar_t__ device_get_children (int ,int *,scalar_t__*) ;
 struct gic_v3_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int gic_v3_attach (int ) ;
 int gic_v3_detach (int ) ;
 scalar_t__ gic_v3_ofw_bus_attach (int ) ;
 scalar_t__ intr_pic_claim_root (int ,intptr_t,int ,struct gic_v3_softc*,scalar_t__) ;
 int * intr_pic_register (int ,intptr_t) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
gic_v3_fdt_attach(device_t dev)
{
 struct gic_v3_softc *sc;
 pcell_t redist_regions;
 intptr_t xref;
 int err;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->gic_bus = GIC_BUS_FDT;




 if (OF_getencprop(ofw_bus_get_node(dev), "#redistributor-regions",
     &redist_regions, sizeof(redist_regions)) <= 0)
  sc->gic_redists.nregions = 1;
 else
  sc->gic_redists.nregions = redist_regions;

 err = gic_v3_attach(dev);
 if (err != 0)
  goto error;

 xref = OF_xref_from_node(ofw_bus_get_node(dev));
 sc->gic_pic = intr_pic_register(dev, xref);
 if (sc->gic_pic == ((void*)0)) {
  device_printf(dev, "could not register PIC\n");
  err = ENXIO;
  goto error;
 }


 OF_device_register_xref(xref, dev);

 if (intr_pic_claim_root(dev, xref, arm_gic_v3_intr, sc,
     GIC_LAST_SGI - GIC_FIRST_SGI + 1) != 0) {
  err = ENXIO;
  goto error;
 }






 if (gic_v3_ofw_bus_attach(dev) != 0) {
  if (bootverbose) {
   device_printf(dev,
       "Failed to attach ITS to this GIC\n");
  }
 }

 if (device_get_children(dev, &sc->gic_children, &sc->gic_nchildren) != 0)
  sc->gic_nchildren = 0;

 return (err);

error:
 if (bootverbose) {
  device_printf(dev,
      "Failed to attach. Error %d\n", err);
 }

 gic_v3_detach(dev);

 return (err);
}
