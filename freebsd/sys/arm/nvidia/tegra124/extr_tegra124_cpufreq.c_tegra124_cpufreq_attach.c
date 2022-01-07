
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct tegra124_cpufreq_softc {size_t speedo_id; int act_speed_point; void* cpu_max_freq; int clk_cpu_g; int node; int * cpu_def; int speedo_value; int process_id; int dev; } ;
typedef int device_t ;
struct TYPE_2__ {size_t cpu_speedo_id; int cpu_speedo_value; int cpu_process_id; } ;


 int build_speed_points (struct tegra124_cpufreq_softc*) ;
 int clk_get_freq (int ,int *) ;
 void** cpu_max_freq ;
 int cpufreq_register (int ) ;
 int device_get_parent (int ) ;
 struct tegra124_cpufreq_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int get_fdt_resources (struct tegra124_cpufreq_softc*,int ) ;
 int get_speed_point (struct tegra124_cpufreq_softc*,int ) ;
 size_t nitems (void**) ;
 int ofw_bus_get_node (int ) ;
 int set_cpu_freq (struct tegra124_cpufreq_softc*,int) ;
 int tegra124_cpu_volt_dpll_def ;
 int tegra124_cpu_volt_pllx_def ;
 TYPE_1__ tegra_sku_info ;

__attribute__((used)) static int
tegra124_cpufreq_attach(device_t dev)
{
 struct tegra124_cpufreq_softc *sc;
 uint64_t freq;
 int rv;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->node = ofw_bus_get_node(device_get_parent(dev));

 sc->process_id = tegra_sku_info.cpu_process_id;
 sc->speedo_id = tegra_sku_info.cpu_speedo_id;
 sc->speedo_value = tegra_sku_info.cpu_speedo_value;



 if (1)
  sc->cpu_def = &tegra124_cpu_volt_pllx_def;
 else
  sc->cpu_def = &tegra124_cpu_volt_dpll_def;


 rv = get_fdt_resources(sc, sc->node);
 if (rv != 0) {
  return (rv);
 }

 build_speed_points(sc);

 rv = clk_get_freq(sc->clk_cpu_g, &freq);
 if (rv != 0) {
  device_printf(dev, "Can't get CPU clock frequency\n");
  return (rv);
 }
 if (sc->speedo_id < nitems(cpu_max_freq))
  sc->cpu_max_freq = cpu_max_freq[sc->speedo_id];
 else
  sc->cpu_max_freq = cpu_max_freq[0];
 sc->act_speed_point = get_speed_point(sc, freq);


 rv = set_cpu_freq(sc, 1632000000);
 if (rv != 0) {
  device_printf(dev, "Can't set initial CPU clock frequency\n");
  return (rv);
 }


 cpufreq_register(dev);

 return (0);
}
