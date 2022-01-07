
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_setting {int dummy; } ;
struct bcm2835_cpufreq_softc {scalar_t__ arm_min_freq; scalar_t__ arm_max_freq; } ;
typedef int device_t ;


 int CPUFREQ_VAL_UNKNOWN ;
 int EINVAL ;
 int bcm2835_cpufreq_make_freq_list (int ,struct cf_setting*,int*) ;
 struct bcm2835_cpufreq_softc* device_get_softc (int ) ;
 int memset (struct cf_setting*,int ,int) ;
 int printf (char*) ;

__attribute__((used)) static int
bcm2835_cpufreq_settings(device_t dev, struct cf_setting *sets, int *count)
{
 struct bcm2835_cpufreq_softc *sc;

 if (sets == ((void*)0) || count == ((void*)0))
  return (EINVAL);

 sc = device_get_softc(dev);
 if (sc->arm_min_freq < 0 || sc->arm_max_freq < 0) {
  printf("device is not configured\n");
  return (EINVAL);
 }


 memset(sets, CPUFREQ_VAL_UNKNOWN, sizeof(*sets) * (*count));

 bcm2835_cpufreq_make_freq_list(dev, sets, count);

 return (0);
}
