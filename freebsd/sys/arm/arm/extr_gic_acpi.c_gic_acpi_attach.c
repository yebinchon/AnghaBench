
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_gic_softc {int gic_bus; } ;
typedef int device_t ;


 intptr_t ACPI_INTR_XREF ;
 int ENXIO ;
 int GIC_BUS_ACPI ;
 scalar_t__ GIC_FIRST_SGI ;
 scalar_t__ GIC_LAST_SGI ;
 scalar_t__ arm_gic_add_children (int ) ;
 int arm_gic_attach (int ) ;
 int arm_gic_detach (int ) ;
 int arm_gic_intr ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 struct arm_gic_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ intr_pic_claim_root (int ,intptr_t,int ,struct arm_gic_softc*,scalar_t__) ;
 int intr_pic_deregister (int ,intptr_t) ;
 int * intr_pic_register (int ,intptr_t) ;

__attribute__((used)) static int
gic_acpi_attach(device_t dev)
{
 struct arm_gic_softc *sc = device_get_softc(dev);
 intptr_t xref;
 int err;

 sc->gic_bus = GIC_BUS_ACPI;

 err = arm_gic_attach(dev);
 if (err != 0)
  return (err);

 xref = ACPI_INTR_XREF;





 if (intr_pic_register(dev, xref) == ((void*)0)) {
  device_printf(dev, "could not register PIC\n");
  goto cleanup;
 }




 if (intr_pic_claim_root(dev, xref, arm_gic_intr, sc,
     GIC_LAST_SGI - GIC_FIRST_SGI + 1) != 0) {
  device_printf(dev, "could not set PIC as a root\n");
  intr_pic_deregister(dev, xref);
  goto cleanup;
 }

 if (arm_gic_add_children(dev)) {
  bus_generic_probe(dev);
  return (bus_generic_attach(dev));
 }

 return (0);

cleanup:
 arm_gic_detach(dev);
 return(ENXIO);
}
