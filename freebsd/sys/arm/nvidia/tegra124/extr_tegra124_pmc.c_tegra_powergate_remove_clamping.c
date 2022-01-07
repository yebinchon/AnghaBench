
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tegra124_pmc_softc {int dev; } ;
typedef enum tegra_powergate_id { ____Placeholder_tegra_powergate_id } tegra_powergate_id ;


 int DELAY (int) ;
 int PMC_CLAMP_STATUS ;
 int PMC_CLAMP_STATUS_PARTID (int) ;
 int PMC_GPU_RG_CNTRL ;
 int PMC_PWRGATE_STATUS ;
 int PMC_PWRGATE_STATUS_PARTID (int) ;
 int PMC_REMOVE_CLAMPING_CMD ;
 int PMC_REMOVE_CLAMPING_CMD_PARTID (int) ;
 int RD4 (struct tegra124_pmc_softc*,int ) ;
 int TEGRA_POWERGATE_3D ;
 int TEGRA_POWERGATE_PCX ;
 int TEGRA_POWERGATE_VDE ;
 int WR4 (struct tegra124_pmc_softc*,int ,int) ;
 int device_printf (int ,char*) ;
 int panic (char*) ;
 struct tegra124_pmc_softc* tegra124_pmc_get_sc () ;

int
tegra_powergate_remove_clamping(enum tegra_powergate_id id)
{
 struct tegra124_pmc_softc *sc;
 uint32_t reg;
 enum tegra_powergate_id swid;
 int i;

 sc = tegra124_pmc_get_sc();

 if (id == TEGRA_POWERGATE_3D) {
  WR4(sc, PMC_GPU_RG_CNTRL, 0);
  return (0);
 }

 reg = RD4(sc, PMC_PWRGATE_STATUS);
 if ((reg & PMC_PWRGATE_STATUS_PARTID(id)) == 0)
  panic("Attempt to remove clamping for unpowered partition.\n");

 if (id == TEGRA_POWERGATE_PCX)
  swid = TEGRA_POWERGATE_VDE;
 else if (id == TEGRA_POWERGATE_VDE)
  swid = TEGRA_POWERGATE_PCX;
 else
  swid = id;
 WR4(sc, PMC_REMOVE_CLAMPING_CMD, PMC_REMOVE_CLAMPING_CMD_PARTID(swid));

 for (i = 100; i > 0; i--) {
  reg = RD4(sc, PMC_REMOVE_CLAMPING_CMD);
  if ((reg & PMC_REMOVE_CLAMPING_CMD_PARTID(swid)) == 0)
   break;
  DELAY(1);
 }
 if (i <= 0)
  device_printf(sc->dev, "Timeout when remove clamping\n");

 reg = RD4(sc, PMC_CLAMP_STATUS);
 if ((reg & PMC_CLAMP_STATUS_PARTID(id)) != 0)
  panic("Cannot remove clamping\n");

 return (0);
}
