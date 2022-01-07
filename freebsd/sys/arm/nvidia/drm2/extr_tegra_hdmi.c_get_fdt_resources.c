
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_softc {int dev; int clk_hdmi; int clk_parent; int hwreset_hdmi; int supply_vdd; int supply_pll; int supply_hdmi; } ;
typedef int phandle_t ;


 int ENXIO ;
 int clk_get_by_ofw_name (int ,int ,char*,int *) ;
 int device_printf (int ,char*) ;
 int hwreset_get_by_ofw_name (int ,int ,char*,int *) ;
 int regulator_get_by_ofw_property (int ,int ,char*,int *) ;

__attribute__((used)) static int
get_fdt_resources(struct hdmi_softc *sc, phandle_t node)
{
 int rv;

 rv = regulator_get_by_ofw_property(sc->dev, 0, "hdmi-supply",
     &sc->supply_hdmi);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'hdmi' regulator\n");
  return (ENXIO);
 }
 rv = regulator_get_by_ofw_property(sc->dev,0, "pll-supply",
     &sc->supply_pll);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'pll' regulator\n");
  return (ENXIO);
 }
 rv = regulator_get_by_ofw_property(sc->dev, 0, "vdd-supply",
     &sc->supply_vdd);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'vdd' regulator\n");
  return (ENXIO);
 }

 rv = hwreset_get_by_ofw_name(sc->dev, 0, "hdmi", &sc->hwreset_hdmi);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'hdmi' reset\n");
  return (ENXIO);
 }
 rv = clk_get_by_ofw_name(sc->dev, 0, "parent", &sc->clk_parent);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'parent' clock\n");
  return (ENXIO);
 }
 rv = clk_get_by_ofw_name(sc->dev, 0, "hdmi", &sc->clk_hdmi);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'hdmi' clock\n");
  return (ENXIO);
 }

 return (0);
}
