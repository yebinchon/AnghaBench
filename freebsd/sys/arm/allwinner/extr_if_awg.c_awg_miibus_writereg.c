
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct awg_softc {int mdc_div_ratio_m; } ;
typedef int device_t ;


 int DELAY (int) ;
 int EMAC_MII_CMD ;
 int EMAC_MII_DATA ;
 int MDC_DIV_RATIO_M_SHIFT ;
 int MII_BUSY ;
 int MII_BUSY_RETRY ;
 int MII_WR ;
 int PHY_ADDR_SHIFT ;
 int PHY_REG_ADDR_SHIFT ;
 int RD4 (struct awg_softc*,int ) ;
 int WR4 (struct awg_softc*,int ,int) ;
 struct awg_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int) ;

__attribute__((used)) static int
awg_miibus_writereg(device_t dev, int phy, int reg, int val)
{
 struct awg_softc *sc;
 int retry;

 sc = device_get_softc(dev);

 WR4(sc, EMAC_MII_DATA, val);
 WR4(sc, EMAC_MII_CMD,
     (sc->mdc_div_ratio_m << MDC_DIV_RATIO_M_SHIFT) |
     (phy << PHY_ADDR_SHIFT) |
     (reg << PHY_REG_ADDR_SHIFT) |
     MII_WR | MII_BUSY);
 for (retry = MII_BUSY_RETRY; retry > 0; retry--) {
  if ((RD4(sc, EMAC_MII_CMD) & MII_BUSY) == 0)
   break;
  DELAY(10);
 }

 if (retry == 0)
  device_printf(dev, "phy write timeout, phy=%d reg=%d\n",
      phy, reg);

 return (0);
}
