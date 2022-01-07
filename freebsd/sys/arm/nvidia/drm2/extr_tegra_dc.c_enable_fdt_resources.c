
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nvidia_head; } ;
struct dc_softc {int dev; int hwreset_dc; int clk_dc; TYPE_1__ tegra_crtc; int clk_parent; } ;


 int TEGRA_POWERGATE_DIS ;
 int TEGRA_POWERGATE_DISB ;
 int clk_set_parent_by_clk (int ,int ) ;
 int device_printf (int ,char*) ;
 int tegra_powergate_sequence_power_up (int,int ,int ) ;

__attribute__((used)) static int
enable_fdt_resources(struct dc_softc *sc)
{
 int id, rv;

 rv = clk_set_parent_by_clk(sc->clk_dc, sc->clk_parent);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot set parent for 'dc' clock\n");
  return (rv);
 }

 id = (sc->tegra_crtc.nvidia_head == 0) ?
     TEGRA_POWERGATE_DIS: TEGRA_POWERGATE_DISB;
 rv = tegra_powergate_sequence_power_up(id, sc->clk_dc, sc->hwreset_dc);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable 'DIS' powergate\n");
  return (rv);
 }

 return (0);
}
