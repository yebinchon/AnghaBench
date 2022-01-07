
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct tegra_pcib_softc {int cfg_base_addr; int cfg_cur_offs; int dev; int cfg_handle; int bus_tag; } ;
typedef int bus_size_t ;


 int PCI_CFG_BUS (int ) ;
 int PCI_CFG_DEV (int ) ;
 int PCI_CFG_EXT_REG (int ) ;
 int PCI_CFG_FUN (int ) ;
 int bus_space_map (int ,int,int,int ,int *) ;
 int bus_space_unmap (int ,int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
tegra_pcbib_map_cfg(struct tegra_pcib_softc *sc, u_int bus, u_int slot,
    u_int func, u_int reg)
{
 bus_size_t offs;
 int rv;

 offs = sc->cfg_base_addr;
 offs |= PCI_CFG_BUS(bus) | PCI_CFG_DEV(slot) | PCI_CFG_FUN(func) |
     PCI_CFG_EXT_REG(reg);
 if ((sc->cfg_handle != 0) && (sc->cfg_cur_offs == offs))
  return (0);
 if (sc->cfg_handle != 0)
  bus_space_unmap(sc->bus_tag, sc->cfg_handle, 0x800);

 rv = bus_space_map(sc->bus_tag, offs, 0x800, 0, &sc->cfg_handle);
 if (rv != 0)
  device_printf(sc->dev, "Cannot map config space\n");
 else
  sc->cfg_cur_offs = offs;
 return (rv);
}
