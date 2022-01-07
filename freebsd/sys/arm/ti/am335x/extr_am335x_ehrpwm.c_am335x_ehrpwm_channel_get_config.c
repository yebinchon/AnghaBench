
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct am335x_ehrpwm_softc {size_t sc_period; TYPE_1__* sc_channels; } ;
typedef int device_t ;
struct TYPE_2__ {size_t duty; } ;


 int EINVAL ;
 size_t NUM_CHANNELS ;
 struct am335x_ehrpwm_softc* device_get_softc (int ) ;

__attribute__((used)) static int
am335x_ehrpwm_channel_get_config(device_t dev, u_int channel,
    u_int *period, u_int *duty)
{
 struct am335x_ehrpwm_softc *sc;

 if (channel >= NUM_CHANNELS)
  return (EINVAL);

 sc = device_get_softc(dev);
 *period = sc->sc_period;
 *duty = sc->sc_channels[channel].duty;
 return (0);
}
