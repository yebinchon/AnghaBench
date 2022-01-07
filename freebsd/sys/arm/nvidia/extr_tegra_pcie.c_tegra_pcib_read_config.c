
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct tegra_pcib_softc {int bus_tag; int cfg_handle; TYPE_1__** ports; } ;
typedef int device_t ;
typedef int bus_space_handle_t ;
struct TYPE_2__ {scalar_t__ port_idx; int cfg_handle; } ;


 int PCI_CFG_BASE_REG (scalar_t__) ;
 int TEGRA_PCIB_MAX_PORTS ;
 int bus_space_read_4 (int ,int ,int) ;
 struct tegra_pcib_softc* device_get_softc (int ) ;
 int tegra_pcbib_map_cfg (struct tegra_pcib_softc*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static uint32_t
tegra_pcib_read_config(device_t dev, u_int bus, u_int slot, u_int func,
    u_int reg, int bytes)
{
 struct tegra_pcib_softc *sc;
 bus_space_handle_t hndl;
 uint32_t off;
 uint32_t val;
 int rv, i;

 sc = device_get_softc(dev);
 if (bus == 0) {
  if (func != 0)
   return (0xFFFFFFFF);
  for (i = 0; i < TEGRA_PCIB_MAX_PORTS; i++) {
   if ((sc->ports[i] != ((void*)0)) &&
       (sc->ports[i]->port_idx == slot)) {
    hndl = sc->ports[i]->cfg_handle;
    off = reg & 0xFFF;
    break;
   }
  }
  if (i >= TEGRA_PCIB_MAX_PORTS)
   return (0xFFFFFFFF);
 } else {
  rv = tegra_pcbib_map_cfg(sc, bus, slot, func, reg);
  if (rv != 0)
   return (0xFFFFFFFF);
  hndl = sc->cfg_handle;
  off = PCI_CFG_BASE_REG(reg);
 }

 val = bus_space_read_4(sc->bus_tag, hndl, off & ~3);
 switch (bytes) {
 case 4:
  break;
 case 2:
  if (off & 3)
   val >>= 16;
  val &= 0xffff;
  break;
 case 1:
  val >>= ((off & 3) << 3);
  val &= 0xff;
  break;
 }
 return val;
}
