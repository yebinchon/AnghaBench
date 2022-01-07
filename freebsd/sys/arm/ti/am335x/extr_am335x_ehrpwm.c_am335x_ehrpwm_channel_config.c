
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct am335x_ehrpwm_softc {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 int NUM_CHANNELS ;
 int PWM_LOCK (struct am335x_ehrpwm_softc*) ;
 int PWM_UNLOCK (struct am335x_ehrpwm_softc*) ;
 int am335x_ehrpwm_cfg_duty (struct am335x_ehrpwm_softc*,int ,int ) ;
 int am335x_ehrpwm_cfg_period (struct am335x_ehrpwm_softc*,int ) ;
 struct am335x_ehrpwm_softc* device_get_softc (int ) ;

__attribute__((used)) static int
am335x_ehrpwm_channel_config(device_t dev, u_int channel, u_int period, u_int duty)
{
 struct am335x_ehrpwm_softc *sc;
 bool status;

 if (channel >= NUM_CHANNELS)
  return (EINVAL);

 sc = device_get_softc(dev);

 PWM_LOCK(sc);
 status = am335x_ehrpwm_cfg_period(sc, period);
 if (status)
  am335x_ehrpwm_cfg_duty(sc, channel, duty);
 PWM_UNLOCK(sc);

 return (status ? 0 : EINVAL);
}
