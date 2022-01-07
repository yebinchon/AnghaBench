
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tegra124_pmc_softc {int dummy; } ;
typedef enum tegra_powergate_id { ____Placeholder_tegra_powergate_id } tegra_powergate_id ;


 int PMC_PWRGATE_STATUS ;
 int PMC_PWRGATE_STATUS_PARTID (int) ;
 int RD4 (struct tegra124_pmc_softc*,int ) ;
 struct tegra124_pmc_softc* tegra124_pmc_get_sc () ;

int
tegra_powergate_is_powered(enum tegra_powergate_id id)
{
 struct tegra124_pmc_softc *sc;
 uint32_t reg;

 sc = tegra124_pmc_get_sc();

 reg = RD4(sc, PMC_PWRGATE_STATUS);
 return ((reg & PMC_PWRGATE_STATUS_PARTID(id)) ? 1 : 0);
}
