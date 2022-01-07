
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_softc {int dev; int hwreset_hdmi; int clk_hdmi; int supply_vdd; int supply_pll; int supply_hdmi; int clk_parent; } ;


 int clk_enable (int ) ;
 int clk_set_freq (int ,int,int ) ;
 int clk_set_parent_by_clk (int ,int ) ;
 int device_printf (int ,char*) ;
 int hwreset_deassert (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int
enable_fdt_resources(struct hdmi_softc *sc)
{
 int rv;


 rv = clk_set_parent_by_clk(sc->clk_hdmi, sc->clk_parent);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot set parent for 'hdmi' clock\n");
  return (rv);
 }


 rv = clk_set_freq(sc->clk_parent, 594000000, 0);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot set frequency for 'hdmi' parent clock\n");
  return (rv);
 }
 rv = clk_set_freq(sc->clk_hdmi, 594000000 / 4, 0);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot set frequency for 'hdmi' parent clock\n");
  return (rv);
 }

 rv = regulator_enable(sc->supply_hdmi);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable  'hdmi' regulator\n");
  return (rv);
 }
 rv = regulator_enable(sc->supply_pll);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable  'pll' regulator\n");
  return (rv);
 }
 rv = regulator_enable(sc->supply_vdd);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable  'vdd' regulator\n");
  return (rv);
 }

 rv = clk_enable(sc->clk_hdmi);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable 'hdmi' clock\n");
  return (rv);
 }

 rv = hwreset_deassert(sc->hwreset_hdmi);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot unreset  'hdmi' reset\n");
  return (rv);
 }
 return (0);
}
