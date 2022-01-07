
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct mv_pcib_softc {scalar_t__ sc_type; int sc_bsh; int sc_bst; } ;


 scalar_t__ MV_TYPE_PCI ;
 int PCIE_REG_CFG_ADDR ;
 int PCIE_REG_CFG_DATA ;
 int PCI_CFG_BUS (int) ;
 int PCI_CFG_DEV (int) ;
 int PCI_CFG_ENA ;
 int PCI_CFG_FUN (int) ;
 int PCI_CFG_PCIE_REG (int) ;
 int PCI_REG_CFG_ADDR ;
 int PCI_REG_CFG_DATA ;
 int bus_space_write_1 (int ,int ,int,int) ;
 int bus_space_write_2 (int ,int ,int,int ) ;
 int bus_space_write_4 (int ,int ,int,int) ;
 int htole16 (int) ;
 int htole32 (int) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int pcicfg_mtx ;

__attribute__((used)) static void
mv_pcib_hw_cfgwrite(struct mv_pcib_softc *sc, u_int bus, u_int slot,
    u_int func, u_int reg, uint32_t data, int bytes)
{
 uint32_t addr, ca, cd;

 ca = (sc->sc_type != MV_TYPE_PCI) ?
     PCIE_REG_CFG_ADDR : PCI_REG_CFG_ADDR;
 cd = (sc->sc_type != MV_TYPE_PCI) ?
     PCIE_REG_CFG_DATA : PCI_REG_CFG_DATA;
 addr = PCI_CFG_ENA | PCI_CFG_BUS(bus) | PCI_CFG_DEV(slot) |
     PCI_CFG_FUN(func) | PCI_CFG_PCIE_REG(reg);

 mtx_lock_spin(&pcicfg_mtx);
 bus_space_write_4(sc->sc_bst, sc->sc_bsh, ca, addr);

 switch (bytes) {
 case 1:
  bus_space_write_1(sc->sc_bst, sc->sc_bsh,
      cd + (reg & 3), data);
  break;
 case 2:
  bus_space_write_2(sc->sc_bst, sc->sc_bsh,
      cd + (reg & 2), htole16(data));
  break;
 case 4:
  bus_space_write_4(sc->sc_bst, sc->sc_bsh,
      cd, htole32(data));
  break;
 }
 mtx_unlock_spin(&pcicfg_mtx);
}
