
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct aw_thermal_softc {int throttle; TYPE_2__* levels; int min_freq; } ;
typedef int * device_t ;
struct TYPE_4__ {int freq; } ;
struct TYPE_5__ {TYPE_1__ total_set; } ;


 int CPUFREQ_LEVELS (int *,TYPE_2__*,int*) ;
 int CPUFREQ_PRIO_USER ;
 int CPUFREQ_SET (int *,TYPE_2__*,int ) ;
 int MAX_CF_LEVELS ;
 int devclass_find (char*) ;
 int * devclass_get_device (int ,int ) ;

__attribute__((used)) static void
aw_thermal_throttle(struct aw_thermal_softc *sc, int enable)
{
 device_t cf_dev;
 int count, error;

 if (enable == sc->throttle)
  return;

 if (enable != 0) {

  cf_dev = devclass_get_device(devclass_find("cpufreq"), 0);
  if (cf_dev == ((void*)0))
   return;
  count = MAX_CF_LEVELS;
  error = CPUFREQ_LEVELS(cf_dev, sc->levels, &count);
  if (error != 0 || count == 0)
   return;
  sc->min_freq = sc->levels[count - 1].total_set.freq;
  error = CPUFREQ_SET(cf_dev, &sc->levels[count - 1],
      CPUFREQ_PRIO_USER);
  if (error != 0)
   return;
 }

 sc->throttle = enable;
}
