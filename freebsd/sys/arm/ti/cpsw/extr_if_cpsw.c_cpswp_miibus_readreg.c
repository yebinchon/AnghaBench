
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cpswp_softc {int phyaccess; int swsc; } ;
typedef int device_t ;


 int MDIO_PHYACCESS_ACK ;
 int MDIO_PHYACCESS_GO ;
 int cpsw_read_4 (int ,int ) ;
 int cpsw_write_4 (int ,int ,int) ;
 int cpswp_miibus_ready (int ,int ) ;
 struct cpswp_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
cpswp_miibus_readreg(device_t dev, int phy, int reg)
{
 struct cpswp_softc *sc;
 uint32_t cmd, r;

 sc = device_get_softc(dev);
 if (!cpswp_miibus_ready(sc->swsc, sc->phyaccess)) {
  device_printf(dev, "MDIO not ready to read\n");
  return (0);
 }


 cmd = MDIO_PHYACCESS_GO | (reg & 0x1F) << 21 | (phy & 0x1F) << 16;
 cpsw_write_4(sc->swsc, sc->phyaccess, cmd);

 if (!cpswp_miibus_ready(sc->swsc, sc->phyaccess)) {
  device_printf(dev, "MDIO timed out during read\n");
  return (0);
 }

 r = cpsw_read_4(sc->swsc, sc->phyaccess);
 if ((r & MDIO_PHYACCESS_ACK) == 0) {
  device_printf(dev, "Failed to read from PHY.\n");
  r = 0;
 }
 return (r & 0xFFFF);
}
