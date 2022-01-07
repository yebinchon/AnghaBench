
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv_gpio_softc {size_t pin_num; TYPE_1__* gpio_setup; } ;
struct mv_gpio_pindev {size_t pin; int dev; } ;
struct TYPE_2__ {int gp_flags; } ;


 int MV_GPIO_IN_IRQ_DOUBLE_EDGE ;
 int MV_GPIO_IN_IRQ_EDGE ;
 int MV_GPIO_LOCK () ;
 int MV_GPIO_UNLOCK () ;
 scalar_t__ device_get_softc (int ) ;
 int mv_gpio_edge (int ,size_t,int) ;
 int mv_gpio_level (int ,size_t,int) ;

__attribute__((used)) static void
mv_gpio_intr_unmask(struct mv_gpio_pindev *s)
{
 struct mv_gpio_softc *sc;
 sc = (struct mv_gpio_softc *)device_get_softc(s->dev);

 if (s->pin >= sc->pin_num)
  return;

 MV_GPIO_LOCK();

 if (sc->gpio_setup[s->pin].gp_flags & (MV_GPIO_IN_IRQ_EDGE |
     MV_GPIO_IN_IRQ_DOUBLE_EDGE))
  mv_gpio_edge(s->dev, s->pin, 1);
 else
  mv_gpio_level(s->dev, s->pin, 1);

 MV_GPIO_UNLOCK();

 return;
}
