
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_gpio_softc {int sc_maxpin; int * sc_mem_res; } ;


 int EINVAL ;

__attribute__((used)) static int
ti_gpio_valid_pin(struct ti_gpio_softc *sc, int pin)
{

 if (pin >= sc->sc_maxpin || sc->sc_mem_res == ((void*)0))
  return (EINVAL);

 return (0);
}
