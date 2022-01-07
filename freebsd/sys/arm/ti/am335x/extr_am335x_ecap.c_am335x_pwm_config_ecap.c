
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct am335x_ecap_softc {int dummy; } ;
typedef int * device_t ;


 int ECAP_CAP3 ;
 int ECAP_CAP4 ;
 int ECAP_ECCTL2 ;
 int ECAP_READ2 (struct am335x_ecap_softc*,int ) ;
 int ECAP_TSCTR ;
 int ECAP_WRITE2 (struct am335x_ecap_softc*,int ,int) ;
 int ECAP_WRITE4 (struct am335x_ecap_softc*,int ,int) ;
 int ECCTL2_MODE_APWM ;
 int ECCTL2_SYNCO_SEL ;
 int ECCTL2_TSCTRSTOP_FREERUN ;
 int EINVAL ;
 int ENXIO ;
 int PWM_LOCK (struct am335x_ecap_softc*) ;
 int PWM_UNLOCK (struct am335x_ecap_softc*) ;
 int am335x_ecap_devclass ;
 int * devclass_get_device (int ,int) ;
 struct am335x_ecap_softc* device_get_softc (int *) ;

int
am335x_pwm_config_ecap(int unit, int period, int duty)
{
 device_t dev;
 struct am335x_ecap_softc *sc;
 uint16_t reg;

 dev = devclass_get_device(am335x_ecap_devclass, unit);
 if (dev == ((void*)0))
  return (ENXIO);

 if (duty > period)
  return (EINVAL);

 if (period == 0)
  return (EINVAL);

 sc = device_get_softc(dev);
 PWM_LOCK(sc);

 reg = ECAP_READ2(sc, ECAP_ECCTL2);
 reg |= ECCTL2_MODE_APWM | ECCTL2_TSCTRSTOP_FREERUN | ECCTL2_SYNCO_SEL;
 ECAP_WRITE2(sc, ECAP_ECCTL2, reg);


 ECAP_WRITE4(sc, ECAP_CAP3, period - 1);


 ECAP_WRITE4(sc, ECAP_CAP4, duty);

 ECAP_WRITE4(sc, ECAP_TSCTR, 0);

 PWM_UNLOCK(sc);

 return (0);
}
