
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv_gpio_softc {int pin_num; struct intr_event** gpio_events; TYPE_1__* gpio_setup; } ;
struct mv_gpio_pindev {int dummy; } ;
struct intr_event {int dummy; } ;
typedef int driver_filter_t ;
typedef int device_t ;
struct TYPE_2__ {int gp_flags; } ;


 int ENXIO ;
 int MV_GPIO_IN_DEBOUNCE ;
 int MV_GPIO_IN_IRQ_DOUBLE_EDGE ;
 int MV_GPIO_LOCK () ;
 int MV_GPIO_UNLOCK () ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 scalar_t__ device_get_softc (int ) ;
 int intr_event_add_handler (struct intr_event*,char const*,int *,void (*) (void*),void*,int ,int,void**) ;
 int intr_event_create (struct intr_event**,void*,int ,int,void (*) (void*),void (*) (void*),void (*) (void*),int *,char*,int) ;
 int intr_priority (int) ;
 struct mv_gpio_pindev* malloc (int,int ,int) ;
 int mv_gpio_debounce_init (int ,int) ;
 int mv_gpio_double_edge_init (int ,int) ;
 scalar_t__ mv_gpio_int_ack ;
 scalar_t__ mv_gpio_intr_mask ;
 scalar_t__ mv_gpio_intr_unmask ;

int
mv_gpio_setup_intrhandler(device_t dev, const char *name, driver_filter_t *filt,
    void (*hand)(void *), void *arg, int pin, int flags, void **cookiep)
{
 struct intr_event *event;
 int error;
 struct mv_gpio_pindev *s;
 struct mv_gpio_softc *sc;
 sc = (struct mv_gpio_softc *)device_get_softc(dev);
 s = malloc(sizeof(struct mv_gpio_pindev), M_DEVBUF, M_NOWAIT | M_ZERO);

 if (pin < 0 || pin >= sc->pin_num)
  return (ENXIO);
 event = sc->gpio_events[pin];
 if (event == ((void*)0)) {
  MV_GPIO_LOCK();
  if (sc->gpio_setup[pin].gp_flags & MV_GPIO_IN_DEBOUNCE) {
   error = mv_gpio_debounce_init(dev, pin);
   if (error != 0) {
    MV_GPIO_UNLOCK();
    return (error);
   }
  } else if (sc->gpio_setup[pin].gp_flags & MV_GPIO_IN_IRQ_DOUBLE_EDGE)
   mv_gpio_double_edge_init(dev, pin);
  MV_GPIO_UNLOCK();
  error = intr_event_create(&event, (void *)s, 0, pin,
      (void (*)(void *))mv_gpio_intr_mask,
      (void (*)(void *))mv_gpio_intr_unmask,
      (void (*)(void *))mv_gpio_int_ack,
      ((void*)0),
      "gpio%d:", pin);
  if (error != 0)
   return (error);
  sc->gpio_events[pin] = event;
 }

 intr_event_add_handler(event, name, filt, hand, arg,
     intr_priority(flags), flags, cookiep);
 return (0);
}
