
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cpswp_softc {int phyaccess; int swsc; } ;
typedef int device_t ;


 int MDIO_PHYACCESS_GO ;
 int MDIO_PHYACCESS_WRITE ;
 int cpsw_write_4 (int ,int ,int) ;
 int cpswp_miibus_ready (int ,int ) ;
 struct cpswp_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
cpswp_miibus_writereg(device_t dev, int phy, int reg, int value)
{
 struct cpswp_softc *sc;
 uint32_t cmd;

 sc = device_get_softc(dev);
 if (!cpswp_miibus_ready(sc->swsc, sc->phyaccess)) {
  device_printf(dev, "MDIO not ready to write\n");
  return (0);
 }


 cmd = MDIO_PHYACCESS_GO | MDIO_PHYACCESS_WRITE |
     (reg & 0x1F) << 21 | (phy & 0x1F) << 16 | (value & 0xFFFF);
 cpsw_write_4(sc->swsc, sc->phyaccess, cmd);

 if (!cpswp_miibus_ready(sc->swsc, sc->phyaccess)) {
  device_printf(dev, "MDIO timed out during write\n");
  return (0);
 }

 return (0);
}
