
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rk_cru_softc {int dummy; } ;
typedef int device_t ;
typedef int bus_addr_t ;


 int CCU_READ4 (struct rk_cru_softc*,int ) ;
 int CCU_WRITE4 (struct rk_cru_softc*,int ,int ) ;
 struct rk_cru_softc* device_get_softc (int ) ;

__attribute__((used)) static int
rk_cru_modify_4(device_t dev, bus_addr_t addr, uint32_t clr, uint32_t set)
{
 struct rk_cru_softc *sc;
 uint32_t reg;

 sc = device_get_softc(dev);

 reg = CCU_READ4(sc, addr);
 reg &= ~clr;
 reg |= set;
 CCU_WRITE4(sc, addr, reg);

 return (0);
}
