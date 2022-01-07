
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gic_v3_softc {scalar_t__ gic_nchildren; int gic_children; int * gic_pic; int gic_bus; int dev; } ;
typedef int device_t ;


 int ACPI_INTR_XREF ;
 int ENXIO ;
 int GIC_BUS_ACPI ;
 scalar_t__ GIC_FIRST_SGI ;
 scalar_t__ GIC_LAST_SGI ;
 int arm_gic_v3_intr ;
 scalar_t__ bootverbose ;
 scalar_t__ device_get_children (int ,int *,scalar_t__*) ;
 struct gic_v3_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int gic_v3_acpi_bus_attach (int ) ;
 int gic_v3_acpi_count_regions (int ) ;
 int gic_v3_attach (int ) ;
 int gic_v3_detach (int ) ;
 scalar_t__ intr_pic_claim_root (int ,int ,int ,struct gic_v3_softc*,scalar_t__) ;
 int * intr_pic_register (int ,int ) ;

__attribute__((used)) static int
gic_v3_acpi_attach(device_t dev)
{
 struct gic_v3_softc *sc;
 int err;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->gic_bus = GIC_BUS_ACPI;

 err = gic_v3_acpi_count_regions(dev);
 if (err != 0)
  goto error;

 err = gic_v3_attach(dev);
 if (err != 0)
  goto error;

 sc->gic_pic = intr_pic_register(dev, ACPI_INTR_XREF);
 if (sc->gic_pic == ((void*)0)) {
  device_printf(dev, "could not register PIC\n");
  err = ENXIO;
  goto error;
 }

 if (intr_pic_claim_root(dev, ACPI_INTR_XREF, arm_gic_v3_intr, sc,
     GIC_LAST_SGI - GIC_FIRST_SGI + 1) != 0) {
  err = ENXIO;
  goto error;
 }






 gic_v3_acpi_bus_attach(dev);

 if (device_get_children(dev, &sc->gic_children, &sc->gic_nchildren) !=0)
  sc->gic_nchildren = 0;

 return (0);

error:
 if (bootverbose) {
  device_printf(dev,
      "Failed to attach. Error %d\n", err);
 }

 gic_v3_detach(dev);

 return (err);
}
