
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct aw_pwm_softc {int enabled; } ;
typedef int device_t ;


 struct aw_pwm_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aw_pwm_channel_is_enabled(device_t dev, u_int channel, bool *enabled)
{
 struct aw_pwm_softc *sc;

 sc = device_get_softc(dev);

 *enabled = sc->enabled;

 return (0);
}
