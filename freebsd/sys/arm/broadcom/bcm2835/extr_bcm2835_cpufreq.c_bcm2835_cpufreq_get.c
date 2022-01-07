
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_setting {int * dev; int lat; void* power; void* volts; int freq; } ;
struct bcm2835_cpufreq_softc {int dummy; } ;
typedef int * device_t ;


 int BCM2835_MBOX_CLOCK_ID_ARM ;
 void* CPUFREQ_VAL_UNKNOWN ;
 int EINVAL ;
 int HZ2MHZ (int) ;
 int TRANSITION_LATENCY ;
 int VC_LOCK (struct bcm2835_cpufreq_softc*) ;
 int VC_UNLOCK (struct bcm2835_cpufreq_softc*) ;
 int bcm2835_cpufreq_get_clock_rate (struct bcm2835_cpufreq_softc*,int ) ;
 struct bcm2835_cpufreq_softc* device_get_softc (int *) ;
 int device_printf (int *,char*) ;
 int memset (struct cf_setting*,void*,int) ;

__attribute__((used)) static int
bcm2835_cpufreq_get(device_t dev, struct cf_setting *cf)
{
 struct bcm2835_cpufreq_softc *sc;
 int arm_freq;

 if (cf == ((void*)0))
  return (EINVAL);

 sc = device_get_softc(dev);
 memset(cf, CPUFREQ_VAL_UNKNOWN, sizeof(*cf));
 cf->dev = ((void*)0);


 VC_LOCK(sc);
 arm_freq = bcm2835_cpufreq_get_clock_rate(sc,
     BCM2835_MBOX_CLOCK_ID_ARM);
 VC_UNLOCK(sc);
 if (arm_freq < 0) {
  device_printf(dev, "can't get clock\n");
  return (EINVAL);
 }


 cf->freq = HZ2MHZ(arm_freq);

 cf->volts = CPUFREQ_VAL_UNKNOWN;

 cf->power = CPUFREQ_VAL_UNKNOWN;

 cf->lat = TRANSITION_LATENCY;

 cf->dev = dev;

 return (0);
}
