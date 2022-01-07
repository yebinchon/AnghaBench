
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tmc_softc {int res; } ;
typedef int device_t ;


 int CTL_TRACECAPTEN ;
 int STS_TMCREADY ;
 int TMC_CTL ;
 int TMC_STS ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;
 struct tmc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
tmc_stop(device_t dev)
{
 struct tmc_softc *sc;
 uint32_t reg;

 sc = device_get_softc(dev);

 reg = bus_read_4(sc->res, TMC_CTL);
 reg &= ~CTL_TRACECAPTEN;
 bus_write_4(sc->res, TMC_CTL, reg);

 do {
  reg = bus_read_4(sc->res, TMC_STS);
 } while ((reg & STS_TMCREADY) == 1);

 return (0);
}
