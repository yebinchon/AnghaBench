
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra124_cpufreq_softc {int * clk_dfll; int * clk_pll_p; int * clk_pll_x; int * clk_cpu_lp; int * clk_cpu_g; int * supply_vdd_cpu; } ;
typedef int device_t ;


 int clk_release (int *) ;
 int cpufreq_unregister (int ) ;
 struct tegra124_cpufreq_softc* device_get_softc (int ) ;
 int regulator_release (int *) ;

__attribute__((used)) static int
tegra124_cpufreq_detach(device_t dev)
{
 struct tegra124_cpufreq_softc *sc;

 sc = device_get_softc(dev);
 cpufreq_unregister(dev);

 if (sc->supply_vdd_cpu != ((void*)0))
  regulator_release(sc->supply_vdd_cpu);

 if (sc->clk_cpu_g != ((void*)0))
  clk_release(sc->clk_cpu_g);
 if (sc->clk_cpu_lp != ((void*)0))
  clk_release(sc->clk_cpu_lp);
 if (sc->clk_pll_x != ((void*)0))
  clk_release(sc->clk_pll_x);
 if (sc->clk_pll_p != ((void*)0))
  clk_release(sc->clk_pll_p);
 if (sc->clk_dfll != ((void*)0))
  clk_release(sc->clk_dfll);
 return (0);
}
