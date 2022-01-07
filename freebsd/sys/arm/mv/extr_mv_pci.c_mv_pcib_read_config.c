
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef int u_int ;
struct mv_pcib_softc {int sc_bsh; int sc_bst; } ;
typedef int device_t ;


 int PCIE_REG_STATUS ;
 int PCIE_STATUS_LINK_DOWN ;
 int bus_space_read_4 (int ,int ,int ) ;
 struct mv_pcib_softc* device_get_softc (int ) ;
 unsigned int mv_pcib_hw_cfgread (struct mv_pcib_softc*,int ,int ,int ,int ,int) ;
 scalar_t__ mv_pcib_root_slot (int ,int ,int ,int ) ;

__attribute__((used)) static uint32_t
mv_pcib_read_config(device_t dev, u_int bus, u_int slot, u_int func,
    u_int reg, int bytes)
{
 struct mv_pcib_softc *sc = device_get_softc(dev);


 if ((bus_space_read_4(sc->sc_bst, sc->sc_bsh, PCIE_REG_STATUS) &
     PCIE_STATUS_LINK_DOWN) || mv_pcib_root_slot(dev, bus, slot, func))
  return (~0U);

 return (mv_pcib_hw_cfgread(sc, bus, slot, func, reg, bytes));
}
