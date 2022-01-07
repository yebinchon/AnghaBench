
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct ti_gpio_softc {int sc_maxpin; int sc_dev; TYPE_1__* sc_isrcs; } ;
struct TYPE_2__ {size_t tgi_irq; int tgi_isrc; int tgi_mode; int tgi_mask; } ;


 int ENXIO ;
 int GPIO_INTR_CONFORM ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int OF_xref_from_node (int ) ;
 int TI_GPIO_MASK (size_t) ;
 char* device_get_nameunit (int ) ;
 int intr_isrc_register (int *,int ,int ,char*,char const*,size_t) ;
 int * intr_pic_register (int ,int ) ;
 TYPE_1__* malloc (int,int ,int) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
ti_gpio_pic_attach(struct ti_gpio_softc *sc)
{
 int error;
 uint32_t irq;
 const char *name;

 sc->sc_isrcs = malloc(sizeof(*sc->sc_isrcs) * sc->sc_maxpin, M_DEVBUF,
     M_WAITOK | M_ZERO);

 name = device_get_nameunit(sc->sc_dev);
 for (irq = 0; irq < sc->sc_maxpin; irq++) {
  sc->sc_isrcs[irq].tgi_irq = irq;
  sc->sc_isrcs[irq].tgi_mask = TI_GPIO_MASK(irq);
  sc->sc_isrcs[irq].tgi_mode = GPIO_INTR_CONFORM;

  error = intr_isrc_register(&sc->sc_isrcs[irq].tgi_isrc,
      sc->sc_dev, 0, "%s,%u", name, irq);
  if (error != 0)
   return (error);
 }
 if (intr_pic_register(sc->sc_dev,
     OF_xref_from_node(ofw_bus_get_node(sc->sc_dev))) == ((void*)0))
  return (ENXIO);

 return (0);
}
