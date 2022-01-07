
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct rk30_gpio_softc {int sc_gpio_npins; int sc_dev; TYPE_1__* sc_gpio_pins; } ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int ihandle_t ;
struct TYPE_2__ {int gp_pin; } ;


 int EINVAL ;
 int ENXIO ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OUTPUT ;
 scalar_t__ OF_getencprop (int ,char*,int*,int) ;
 scalar_t__ fdt_regsize (int ,int *,int *) ;
 int rk30_gpio_pin_configure (struct rk30_gpio_softc*,TYPE_1__*,int) ;
 int rk30_gpio_pin_set (int ,int,int ) ;
 struct rk30_gpio_softc* rk30_gpio_sc ;

int
rk30_gpios_prop_handle(phandle_t ctrl, pcell_t *gpios, int len)
{
 struct rk30_gpio_softc *sc;
 pcell_t gpio_cells;
 int inc, t, tuples, tuple_size;
 int dir, flags, pin, i;
 u_long gpio_ctrl, size;

 sc = rk30_gpio_sc;
 if (sc == ((void*)0))
  return ENXIO;

 if (OF_getencprop(ctrl, "#gpio-cells", &gpio_cells, sizeof(pcell_t)) < 0)
  return (ENXIO);
 if (gpio_cells != 2)
  return (ENXIO);

 tuple_size = gpio_cells * sizeof(pcell_t) + sizeof(phandle_t);
 tuples = len / tuple_size;

 if (fdt_regsize(ctrl, &gpio_ctrl, &size))
  return (ENXIO);





 inc = sizeof(ihandle_t) / sizeof(pcell_t);
 gpios += inc;
 for (t = 0; t < tuples; t++) {
  pin = gpios[0];
  dir = gpios[1];
  flags = gpios[2];

  for (i = 0; i < sc->sc_gpio_npins; i++) {
   if (sc->sc_gpio_pins[i].gp_pin == pin)
    break;
  }
  if (i >= sc->sc_gpio_npins)
   return (EINVAL);

  rk30_gpio_pin_configure(sc, &sc->sc_gpio_pins[i], flags);

  if (dir == 1) {

   rk30_gpio_pin_set(sc->sc_dev, pin, GPIO_PIN_INPUT);
  } else {

   rk30_gpio_pin_set(sc->sc_dev, pin, GPIO_PIN_OUTPUT);
  }
  gpios += gpio_cells + inc;
 }

 return (0);
}
