
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nvidia_head; } ;
struct dc_softc {int dev; TYPE_1__ tegra_crtc; int clk_dc; int clk_parent; int hwreset_dc; } ;
typedef int phandle_t ;


 int OF_getencprop (int ,char*,int *,int) ;
 int clk_get_by_ofw_name (int ,int ,char*,int *) ;
 int device_printf (int ,char*) ;
 int hwreset_get_by_ofw_name (int ,int ,char*,int *) ;

__attribute__((used)) static int
get_fdt_resources(struct dc_softc *sc, phandle_t node)
{
 int rv;

 rv = hwreset_get_by_ofw_name(sc->dev, 0, "dc", &sc->hwreset_dc);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'dc' reset\n");
  return (rv);
 }
 rv = clk_get_by_ofw_name(sc->dev, 0, "parent", &sc->clk_parent);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'parent' clock\n");
  return (rv);
 }
 rv = clk_get_by_ofw_name(sc->dev, 0, "dc", &sc->clk_dc);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'dc' clock\n");
  return (rv);
 }

 rv = OF_getencprop(node, "nvidia,head", &sc->tegra_crtc.nvidia_head,
     sizeof(sc->tegra_crtc.nvidia_head));
 if (rv <= 0) {
  device_printf(sc->dev,
      "Cannot get 'nvidia,head' property\n");
  return (rv);
 }
 return (0);
}
