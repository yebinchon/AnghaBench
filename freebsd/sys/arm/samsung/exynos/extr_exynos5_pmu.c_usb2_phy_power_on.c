
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_softc {int dummy; } ;


 int EXYNOS5_PWR_USBHOST_PHY ;
 int PHY_POWER_ON ;
 int WRITE4 (struct pmu_softc*,int ,int ) ;
 struct pmu_softc* pmu_sc ;

int
usb2_phy_power_on(void)
{
 struct pmu_softc *sc;

 sc = pmu_sc;
 if (sc == ((void*)0))
  return (-1);


 WRITE4(sc, EXYNOS5_PWR_USBHOST_PHY, PHY_POWER_ON);

 return (0);
}
