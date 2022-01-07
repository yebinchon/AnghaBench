
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct mv_gpio_softc {int* debounce_counters; int * debounce_callouts; TYPE_1__* gpio_setup; } ;
struct mv_gpio_pindev {int pin; int dev; } ;
typedef int device_t ;
struct TYPE_2__ {int gp_flags; } ;


 int DEBOUNCE_CHECK_MS ;
 int DEBOUNCE_CHECK_TICKS ;
 int DEBOUNCE_HI_LO_MS ;
 int DEBOUNCE_LO_HI_MS ;
 int MV_GPIO_IN_IRQ_DOUBLE_EDGE ;
 int MV_GPIO_IN_POL_LOW ;
 int MV_GPIO_LOCK () ;
 int MV_GPIO_UNLOCK () ;
 int M_DEVBUF ;
 int callout_deactivate (int ) ;
 int callout_reset (int ,int ,void (*) (void*),void*) ;
 scalar_t__ device_get_softc (int ) ;
 int free (void*,int ) ;
 scalar_t__ mv_gpio_debounced_state_get (int ,int) ;
 int mv_gpio_debounced_state_set (int ,int,int) ;
 int mv_gpio_intr_handler (int ,int) ;
 int mv_gpio_polarity (int ,int,int ,int) ;
 scalar_t__ mv_gpio_value_get (int ,int,int) ;

__attribute__((used)) static void
mv_gpio_debounce(void *arg)
{
 uint8_t raw_read, last_state;
 int pin;
 device_t dev;
 int *debounce_counter;
 struct mv_gpio_softc *sc;
 struct mv_gpio_pindev *s;

 s = (struct mv_gpio_pindev *)arg;
 dev = s->dev;
 pin = s->pin;
 sc = (struct mv_gpio_softc *)device_get_softc(dev);

 MV_GPIO_LOCK();

 raw_read = (mv_gpio_value_get(dev, pin, 1) ? 1 : 0);
 last_state = (mv_gpio_debounced_state_get(dev, pin) ? 1 : 0);
 debounce_counter = &sc->debounce_counters[pin];

 if (raw_read == last_state) {
  if (last_state)
   *debounce_counter = DEBOUNCE_HI_LO_MS /
       DEBOUNCE_CHECK_MS;
  else
   *debounce_counter = DEBOUNCE_LO_HI_MS /
       DEBOUNCE_CHECK_MS;

  callout_reset(sc->debounce_callouts[pin],
      DEBOUNCE_CHECK_TICKS, mv_gpio_debounce, arg);
 } else {
  *debounce_counter = *debounce_counter - 1;
  if (*debounce_counter != 0)
   callout_reset(sc->debounce_callouts[pin],
       DEBOUNCE_CHECK_TICKS, mv_gpio_debounce, arg);
  else {
   mv_gpio_debounced_state_set(dev, pin, raw_read);

   if (last_state)
    *debounce_counter = DEBOUNCE_HI_LO_MS /
        DEBOUNCE_CHECK_MS;
   else
    *debounce_counter = DEBOUNCE_LO_HI_MS /
        DEBOUNCE_CHECK_MS;

   if (((sc->gpio_setup[pin].gp_flags & MV_GPIO_IN_POL_LOW) &&
       (raw_read == 0)) ||
       (((sc->gpio_setup[pin].gp_flags & MV_GPIO_IN_POL_LOW) == 0) &&
       raw_read) ||
       (sc->gpio_setup[pin].gp_flags & MV_GPIO_IN_IRQ_DOUBLE_EDGE))
    mv_gpio_intr_handler(dev, pin);


   mv_gpio_polarity(dev, pin, 0, 1);

   free(arg, M_DEVBUF);
   callout_deactivate(sc->debounce_callouts[pin]);
  }
 }

 MV_GPIO_UNLOCK();
}
