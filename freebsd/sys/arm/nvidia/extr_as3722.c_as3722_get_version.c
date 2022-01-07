
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct as3722_softc {scalar_t__ chip_rev; int dev; } ;


 int AS3722_ASIC_ID1 ;
 int AS3722_ASIC_ID2 ;
 scalar_t__ AS3722_DEVICE_ID ;
 int ENXIO ;
 int RD1 (struct as3722_softc*,int ,scalar_t__*) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,scalar_t__) ;

__attribute__((used)) static int
as3722_get_version(struct as3722_softc *sc)
{
 uint8_t reg;
 int rv;


 rv = RD1(sc, AS3722_ASIC_ID1, &reg);
 if (rv != 0)
  return (ENXIO);

 if (reg != AS3722_DEVICE_ID) {
  device_printf(sc->dev, "Invalid chip ID is 0x%x\n", reg);
  return (ENXIO);
 }

 rv = RD1(sc, AS3722_ASIC_ID2, &sc->chip_rev);
 if (rv != 0)
  return (ENXIO);

 if (bootverbose)
  device_printf(sc->dev, "AS3722 rev: 0x%x\n", sc->chip_rev);
 return (0);
}
