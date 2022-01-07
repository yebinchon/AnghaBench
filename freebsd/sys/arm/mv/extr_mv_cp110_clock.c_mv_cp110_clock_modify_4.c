
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mv_cp110_clock_softc {int dummy; } ;
typedef int device_t ;
typedef int bus_addr_t ;


 int RD4 (struct mv_cp110_clock_softc*,int ) ;
 int WR4 (struct mv_cp110_clock_softc*,int ,int ) ;
 struct mv_cp110_clock_softc* device_get_softc (int ) ;

__attribute__((used)) static int
mv_cp110_clock_modify_4(device_t dev, bus_addr_t addr, uint32_t clr, uint32_t set)
{
 struct mv_cp110_clock_softc *sc;
 uint32_t reg;

 sc = device_get_softc(dev);

 reg = RD4(sc, addr);
 reg &= ~clr;
 reg |= set;
 WR4(sc, addr, reg);

 return (0);
}
