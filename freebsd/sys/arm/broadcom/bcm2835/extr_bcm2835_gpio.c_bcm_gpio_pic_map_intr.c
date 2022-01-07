
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
struct bcm_gpio_softc {TYPE_1__* sc_isrcs; } ;
typedef int device_t ;
struct TYPE_2__ {struct intr_irqsrc bgi_isrc; } ;


 int bcm_gpio_pic_map (struct bcm_gpio_softc*,struct intr_map_data*,size_t*,int *) ;
 struct bcm_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bcm_gpio_pic_map_intr(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
 int error;
 u_int irq;
 struct bcm_gpio_softc *sc = device_get_softc(dev);

 error = bcm_gpio_pic_map(sc, data, &irq, ((void*)0));
 if (error == 0)
  *isrcp = &sc->sc_isrcs[irq].bgi_isrc;
 return (error);
}
