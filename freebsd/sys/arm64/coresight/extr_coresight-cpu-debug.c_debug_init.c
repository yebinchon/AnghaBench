
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct debug_softc {int res; } ;
typedef int device_t ;


 int CORESIGHT_LAR ;
 int CORESIGHT_UNLOCK ;
 int EDOSLAR ;
 int EDPRCR ;
 int EDPRCR_CORENPDRQ ;
 int EDPRCR_COREPURQ ;
 int EDPRSR ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;
 struct debug_softc* device_get_softc (int ) ;

__attribute__((used)) static int
debug_init(device_t dev)
{
 struct debug_softc *sc;
 uint32_t reg;

 sc = device_get_softc(dev);


 bus_write_4(sc->res, CORESIGHT_LAR, CORESIGHT_UNLOCK);


 bus_write_4(sc->res, EDOSLAR, 0);


 reg = bus_read_4(sc->res, EDPRCR);
 if (reg & EDPRCR_CORENPDRQ)
  return (0);


 reg |= EDPRCR_COREPURQ;
 bus_write_4(sc->res, EDPRCR, reg);

 do {
  reg = bus_read_4(sc->res, EDPRSR);
 } while ((reg & EDPRCR_CORENPDRQ) == 0);

 return (0);
}
