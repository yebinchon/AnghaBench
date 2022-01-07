
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_gic_softc {uintptr_t gic_bus; int gic_iidr; } ;
typedef int device_t ;


 int ENOENT ;
 int GICD_IIDR_VAR (int ) ;
 uintptr_t GIC_BUS_MAX ;
 uintptr_t GIC_BUS_UNKNOWN ;


 int KASSERT (int,char*) ;
 struct arm_gic_softc* device_get_softc (int ) ;

__attribute__((used)) static int
arm_gic_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{
 struct arm_gic_softc *sc;

 sc = device_get_softc(dev);

 switch(which) {
 case 128:
  KASSERT(GICD_IIDR_VAR(sc->gic_iidr) < 3,
      ("arm_gic_read_ivar: Unknown IIDR revision %u (%.08x)",
       GICD_IIDR_VAR(sc->gic_iidr), sc->gic_iidr));
  *result = GICD_IIDR_VAR(sc->gic_iidr);
  return (0);
 case 129:
  KASSERT(sc->gic_bus != GIC_BUS_UNKNOWN,
      ("arm_gic_read_ivar: Unknown bus type"));
  KASSERT(sc->gic_bus <= GIC_BUS_MAX,
      ("arm_gic_read_ivar: Invalid bus type %u", sc->gic_bus));
  *result = sc->gic_bus;
  return (0);
 }

 return (ENOENT);
}
