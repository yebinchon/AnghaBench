
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct bcm_gpio_softc {int sc_dev; TYPE_1__* sc_isrcs; } ;
struct TYPE_2__ {size_t bgi_irq; int bgi_isrc; int bgi_mode; int bgi_mask; } ;


 int BCM_GPIO_MASK (size_t) ;
 size_t BCM_GPIO_PINS ;
 int ENXIO ;
 int GPIO_INTR_CONFORM ;
 int OF_xref_from_node (int ) ;
 char* device_get_nameunit (int ) ;
 int intr_isrc_register (int *,int ,int ,char*,char const*,size_t) ;
 int * intr_pic_register (int ,int ) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
bcm_gpio_pic_attach(struct bcm_gpio_softc *sc)
{
 int error;
 uint32_t irq;
 const char *name;

 name = device_get_nameunit(sc->sc_dev);
 for (irq = 0; irq < BCM_GPIO_PINS; irq++) {
  sc->sc_isrcs[irq].bgi_irq = irq;
  sc->sc_isrcs[irq].bgi_mask = BCM_GPIO_MASK(irq);
  sc->sc_isrcs[irq].bgi_mode = GPIO_INTR_CONFORM;

  error = intr_isrc_register(&sc->sc_isrcs[irq].bgi_isrc,
      sc->sc_dev, 0, "%s,%u", name, irq);
  if (error != 0)
   return (error);
 }
 if (intr_pic_register(sc->sc_dev,
     OF_xref_from_node(ofw_bus_get_node(sc->sc_dev))) == ((void*)0))
  return (ENXIO);

 return (0);
}
