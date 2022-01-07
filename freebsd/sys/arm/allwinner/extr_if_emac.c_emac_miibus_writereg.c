
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_softc {int dummy; } ;
typedef int device_t ;


 int EMAC_MAC_MADR ;
 int EMAC_MAC_MCMD ;
 int EMAC_MAC_MWTD ;
 int EMAC_WRITE_REG (struct emac_softc*,int ,int) ;
 struct emac_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int emac_miibus_iowait (struct emac_softc*) ;

__attribute__((used)) static int
emac_miibus_writereg(device_t dev, int phy, int reg, int data)
{
 struct emac_softc *sc;

 sc = device_get_softc(dev);


 EMAC_WRITE_REG(sc, EMAC_MAC_MADR, (phy << 8) | reg);

 EMAC_WRITE_REG(sc, EMAC_MAC_MWTD, data);

 EMAC_WRITE_REG(sc, EMAC_MAC_MCMD, 0x1);
 if (!emac_miibus_iowait(sc)) {
  device_printf(dev, "timeout waiting for mii write\n");
  return (0);
 }

 EMAC_WRITE_REG(sc, EMAC_MAC_MCMD, 0x0);

 return (0);
}
