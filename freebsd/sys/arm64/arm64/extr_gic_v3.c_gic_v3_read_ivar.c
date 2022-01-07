
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pcpu; } ;
struct gic_v3_softc {uintptr_t gic_nirqs; uintptr_t gic_nchildren; uintptr_t gic_bus; int gic_pidr2; TYPE_1__ gic_redists; } ;
typedef int device_t ;


 int ENOENT ;
 uintptr_t GICR_PIDR2_ARCH (int ) ;
 uintptr_t GICR_PIDR2_ARCH_GICv3 ;
 uintptr_t GICR_PIDR2_ARCH_GICv4 ;


 uintptr_t GIC_BUS_MAX ;
 uintptr_t GIC_BUS_UNKNOWN ;


 int KASSERT (int,char*) ;
 uintptr_t NIRQ ;
 size_t PCPU_GET (int ) ;
 int cpuid ;
 struct gic_v3_softc* device_get_softc (int ) ;

__attribute__((used)) static int
gic_v3_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{
 struct gic_v3_softc *sc;

 sc = device_get_softc(dev);

 switch (which) {
 case 131:
  *result = (NIRQ - sc->gic_nirqs) / sc->gic_nchildren;
  return (0);
 case 130:
  *result = (uintptr_t)sc->gic_redists.pcpu[PCPU_GET(cpuid)];
  return (0);
 case 128:
  KASSERT(
      GICR_PIDR2_ARCH(sc->gic_pidr2) == GICR_PIDR2_ARCH_GICv3 ||
      GICR_PIDR2_ARCH(sc->gic_pidr2) == GICR_PIDR2_ARCH_GICv4,
      ("gic_v3_read_ivar: Invalid GIC architecture: %d (%.08X)",
       GICR_PIDR2_ARCH(sc->gic_pidr2), sc->gic_pidr2));
  *result = GICR_PIDR2_ARCH(sc->gic_pidr2);
  return (0);
 case 129:
  KASSERT(sc->gic_bus != GIC_BUS_UNKNOWN,
      ("gic_v3_read_ivar: Unknown bus type"));
  KASSERT(sc->gic_bus <= GIC_BUS_MAX,
      ("gic_v3_read_ivar: Invalid bus type %u", sc->gic_bus));
  *result = sc->gic_bus;
  return (0);
 }

 return (ENOENT);
}
