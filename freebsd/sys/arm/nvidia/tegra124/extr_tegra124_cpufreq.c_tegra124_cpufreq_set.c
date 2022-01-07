
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct tegra124_cpufreq_softc {int cpu_max_freq; } ;
struct cf_setting {scalar_t__ freq; } ;
typedef int device_t ;


 int EINVAL ;
 int cpufreq_lowest_freq ;
 struct tegra124_cpufreq_softc* device_get_softc (int ) ;
 int set_cpu_freq (struct tegra124_cpufreq_softc*,int) ;

__attribute__((used)) static int
tegra124_cpufreq_set(device_t dev, const struct cf_setting *cf)
{
 struct tegra124_cpufreq_softc *sc;
 uint64_t freq;
 int rv;

 if (cf == ((void*)0) || cf->freq < 0)
  return (EINVAL);

 sc = device_get_softc(dev);

 freq = cf->freq;
 if (freq < cpufreq_lowest_freq)
  freq = cpufreq_lowest_freq;
 freq *= 1000000;
 if (freq >= sc->cpu_max_freq)
  freq = sc->cpu_max_freq;
 rv = set_cpu_freq(sc, freq);

 return (rv);
}
