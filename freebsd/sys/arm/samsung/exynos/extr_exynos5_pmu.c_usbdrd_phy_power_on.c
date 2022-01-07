
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_softc {scalar_t__ model; } ;


 scalar_t__ EXYNOS5420 ;
 int EXYNOS5420_USBDRD1_PHY_CTRL ;
 int EXYNOS5_USBDRD_PHY_CTRL ;
 int PHY_POWER_ON ;
 int WRITE4 (struct pmu_softc*,int ,int ) ;
 struct pmu_softc* pmu_sc ;

int
usbdrd_phy_power_on(void)
{
 struct pmu_softc *sc;

 sc = pmu_sc;
 if (sc == ((void*)0))
  return (-1);




 WRITE4(sc, EXYNOS5_USBDRD_PHY_CTRL, PHY_POWER_ON);





 if (sc->model == EXYNOS5420)
  WRITE4(sc, EXYNOS5420_USBDRD1_PHY_CTRL, PHY_POWER_ON);

 return (0);
}
