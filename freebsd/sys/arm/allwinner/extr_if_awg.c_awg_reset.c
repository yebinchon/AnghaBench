
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct awg_softc {int dummy; } ;
typedef int device_t ;


 int BASIC_CTL_SOFT_RST ;
 int DELAY (int) ;
 int EMAC_BASIC_CTL_1 ;
 int ENXIO ;
 int ETIMEDOUT ;
 int RD4 (struct awg_softc*,int ) ;
 int SOFT_RST_RETRY ;
 int WR4 (struct awg_softc*,int ,int) ;
 int awg_dump_regs (int ) ;
 scalar_t__ awg_phy_reset (int ) ;
 struct awg_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
awg_reset(device_t dev)
{
 struct awg_softc *sc;
 int retry;

 sc = device_get_softc(dev);


 if (awg_phy_reset(dev) != 0) {
  device_printf(dev, "failed to reset PHY\n");
  return (ENXIO);
 }


 WR4(sc, EMAC_BASIC_CTL_1, BASIC_CTL_SOFT_RST);


 for (retry = SOFT_RST_RETRY; retry > 0; retry--) {
  if ((RD4(sc, EMAC_BASIC_CTL_1) & BASIC_CTL_SOFT_RST) == 0)
   break;
  DELAY(10);
 }
 if (retry == 0) {
  device_printf(dev, "soft reset timed out\n");



  return (ETIMEDOUT);
 }

 return (0);
}
