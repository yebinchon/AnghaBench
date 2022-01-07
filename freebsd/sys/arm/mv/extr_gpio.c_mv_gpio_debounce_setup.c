
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_gpio_softc {struct callout** debounce_callouts; } ;
struct callout {int dummy; } ;
typedef int device_t ;


 int ENXIO ;
 int MV_GPIO_ASSERT_LOCKED () ;
 scalar_t__ callout_active (struct callout*) ;
 int callout_deactivate (struct callout*) ;
 int callout_stop (struct callout*) ;
 scalar_t__ device_get_softc (int ) ;

__attribute__((used)) static int
mv_gpio_debounce_setup(device_t dev, int pin)
{
 struct callout *c;
 struct mv_gpio_softc *sc;

 sc = (struct mv_gpio_softc *)device_get_softc(dev);

 MV_GPIO_ASSERT_LOCKED();

 c = sc->debounce_callouts[pin];
 if (c == ((void*)0))
  return (ENXIO);

 if (callout_active(c))
  callout_deactivate(c);

 callout_stop(c);

 return (0);
}
