
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct awusbphy_softc {int ** pmu; TYPE_1__* phy_conf; } ;
typedef int device_t ;
struct TYPE_2__ {int pmu_unk1; } ;


 int CLR4 (int *,int ,int ) ;
 int PMU_AHB_INCR4 ;
 int PMU_AHB_INCR8 ;
 int PMU_AHB_INCRX_ALIGN ;
 int PMU_IRQ_ENABLE ;
 int PMU_ULPI_BYPASS ;
 int PMU_UNK_H3 ;
 int PMU_UNK_H3_CLR ;
 int SET4 (int *,int ,int) ;
 struct awusbphy_softc* device_get_softc (int ) ;

__attribute__((used)) static void
awusbphy_configure(device_t dev, int phyno)
{
 struct awusbphy_softc *sc;

 sc = device_get_softc(dev);

 if (sc->pmu[phyno] == ((void*)0))
  return;

 if (sc->phy_conf->pmu_unk1 == 1)
  CLR4(sc->pmu[phyno], PMU_UNK_H3, PMU_UNK_H3_CLR);

 SET4(sc->pmu[phyno], PMU_IRQ_ENABLE, PMU_ULPI_BYPASS |
     PMU_AHB_INCR8 | PMU_AHB_INCR4 | PMU_AHB_INCRX_ALIGN);
}
