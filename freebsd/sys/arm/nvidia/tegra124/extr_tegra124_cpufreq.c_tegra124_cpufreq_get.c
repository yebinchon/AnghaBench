
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra124_cpufreq_softc {int latency; TYPE_1__* act_speed_point; } ;
struct cf_setting {int freq; int volts; int * dev; int lat; } ;
typedef int * device_t ;
struct TYPE_2__ {int freq; int uvolt; } ;


 int CPUFREQ_VAL_UNKNOWN ;
 int EINVAL ;
 struct tegra124_cpufreq_softc* device_get_softc (int *) ;
 int memset (struct cf_setting*,int ,int) ;

__attribute__((used)) static int
tegra124_cpufreq_get(device_t dev, struct cf_setting *cf)
{
 struct tegra124_cpufreq_softc *sc;

 if (cf == ((void*)0))
  return (EINVAL);

 sc = device_get_softc(dev);
 memset(cf, CPUFREQ_VAL_UNKNOWN, sizeof(*cf));
 cf->dev = ((void*)0);
 cf->freq = sc->act_speed_point->freq / 1000000;
 cf->volts = sc->act_speed_point->uvolt / 1000;

 cf->lat = sc->latency;

 cf->dev = dev;

 return (0);
}
