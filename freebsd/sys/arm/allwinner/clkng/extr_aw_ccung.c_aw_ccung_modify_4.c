
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct aw_ccung_softc {int dummy; } ;
typedef int device_t ;
typedef int bus_addr_t ;


 int CCU_READ4 (struct aw_ccung_softc*,int ) ;
 int CCU_WRITE4 (struct aw_ccung_softc*,int ,int ) ;
 struct aw_ccung_softc* device_get_softc (int ) ;
 int dprintf (char*,int ,int ,int ) ;

__attribute__((used)) static int
aw_ccung_modify_4(device_t dev, bus_addr_t addr, uint32_t clr, uint32_t set)
{
 struct aw_ccung_softc *sc;
 uint32_t reg;

 sc = device_get_softc(dev);

 dprintf("offset=%lx clr: %x set: %x\n", addr, clr, set);
 reg = CCU_READ4(sc, addr);
 reg &= ~clr;
 reg |= set;
 CCU_WRITE4(sc, addr, reg);

 return (0);
}
