
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_gpio_softc {struct callout** debounce_callouts; } ;
struct callout {int dummy; } ;
typedef int device_t ;


 int ENOMEM ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int callout_init (struct callout*,int) ;
 scalar_t__ device_get_softc (int ) ;
 scalar_t__ malloc (int,int ,int ) ;

__attribute__((used)) static int
mv_gpio_debounce_prepare(device_t dev, int pin)
{
 struct callout *c;
 struct mv_gpio_softc *sc;

 sc = (struct mv_gpio_softc *)device_get_softc(dev);

 c = sc->debounce_callouts[pin];
 if (c == ((void*)0)) {
  c = (struct callout *)malloc(sizeof(struct callout),
      M_DEVBUF, M_WAITOK);
  sc->debounce_callouts[pin] = c;
  if (c == ((void*)0))
   return (ENOMEM);
  callout_init(c, 1);
 }

 return (0);
}
