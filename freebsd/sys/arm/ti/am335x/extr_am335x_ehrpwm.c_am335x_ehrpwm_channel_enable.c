
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
 int am335x_ehrpwm_cfg_enable (struct am335x_ehrpwm_softc*,int ,int) ;
 struct am335x_ehrpwm_softc* device_get_softc (int ) ;

__attribute__((used)) static int
am335x_ehrpwm_channel_enable(device_t dev, u_int channel, bool enable)
{
 struct am335x_ehrpwm_softc *sc;

 if (channel >= NUM_CHANNELS)
  return (EINVAL);

 sc = device_get_softc(dev);

 PWM_LOCK(sc);
 am335x_ehrpwm_cfg_enable(sc, channel, enable);
 PWM_UNLOCK(sc);

 return (0);
}
