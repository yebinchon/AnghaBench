
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra124_cpufreq_softc {int nspeed_points; int cpu_max_freq; int latency; TYPE_1__* speed_points; } ;
struct cf_setting {int freq; int volts; int dev; int lat; } ;
typedef int device_t ;
struct TYPE_2__ {int freq; int uvolt; } ;


 int CPUFREQ_VAL_UNKNOWN ;
 int EINVAL ;
 struct tegra124_cpufreq_softc* device_get_softc (int ) ;
 int memset (struct cf_setting*,int ,int) ;
 int min (int,int) ;

__attribute__((used)) static int
tegra124_cpufreq_settings(device_t dev, struct cf_setting *sets, int *count)
{
 struct tegra124_cpufreq_softc *sc;
 int i, j, max_cnt;

 if (sets == ((void*)0) || count == ((void*)0))
  return (EINVAL);

 sc = device_get_softc(dev);
 memset(sets, CPUFREQ_VAL_UNKNOWN, sizeof(*sets) * (*count));

 max_cnt = min(sc->nspeed_points, *count);
 for (i = 0, j = sc->nspeed_points - 1; j >= 0; j--) {
  if (sc->cpu_max_freq < sc->speed_points[j].freq)
   continue;
  sets[i].freq = sc->speed_points[j].freq / 1000000;
  sets[i].volts = sc->speed_points[j].uvolt / 1000;
  sets[i].lat = sc->latency;
  sets[i].dev = dev;
  i++;
 }
 *count = i;

 return (0);
}
