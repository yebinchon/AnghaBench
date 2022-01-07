
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra124_cpufreq_softc {int clk_dfll; int clk_pll_p; int dev; int clk_pll_x; int clk_cpu_lp; int clk_cpu_g; int supply_vdd_cpu; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int clk_get_by_ofw_name (int ,int ,char*,int *) ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*,...) ;
 int regulator_get_by_ofw_property (int ,int ,char*,int *) ;

__attribute__((used)) static int
get_fdt_resources(struct tegra124_cpufreq_softc *sc, phandle_t node)
{
 int rv;
 device_t parent_dev;

 parent_dev = device_get_parent(sc->dev);
 rv = regulator_get_by_ofw_property(parent_dev, 0, "vdd-cpu-supply",
     &sc->supply_vdd_cpu);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'vdd-cpu' regulator\n");
  return (rv);
 }

 rv = clk_get_by_ofw_name(parent_dev, 0, "cpu_g", &sc->clk_cpu_g);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'cpu_g' clock: %d\n", rv);
  return (ENXIO);
 }

 rv = clk_get_by_ofw_name(parent_dev, 0, "cpu_lp", &sc->clk_cpu_lp);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'cpu_lp' clock\n");
  return (ENXIO);
 }

 rv = clk_get_by_ofw_name(parent_dev, 0, "pll_x", &sc->clk_pll_x);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'pll_x' clock\n");
  return (ENXIO);
 }
 rv = clk_get_by_ofw_name(parent_dev, 0, "pll_p", &sc->clk_pll_p);
 if (rv != 0) {
  device_printf(parent_dev, "Cannot get 'pll_p' clock\n");
  return (ENXIO);
 }
 rv = clk_get_by_ofw_name(parent_dev, 0, "dfll", &sc->clk_dfll);
 if (rv != 0) {





 }
 return (0);
}
