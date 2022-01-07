
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
 int panic (char*) ;

__attribute__((used)) static int
tmc_start(device_t dev)
{
 struct tmc_softc *sc;
 uint32_t reg;

 sc = device_get_softc(dev);

 if (bus_read_4(sc->res, TMC_CTL) & CTL_TRACECAPTEN)
  return (-1);


 bus_write_4(sc->res, TMC_CTL, CTL_TRACECAPTEN);
 if ((bus_read_4(sc->res, TMC_CTL) & CTL_TRACECAPTEN) == 0)
  panic("Not enabled\n");

 do {
  reg = bus_read_4(sc->res, TMC_STS);
 } while ((reg & STS_TMCREADY) == 1);

 if ((bus_read_4(sc->res, TMC_CTL) & CTL_TRACECAPTEN) == 0)
  panic("Not enabled\n");

 return (0);
}
