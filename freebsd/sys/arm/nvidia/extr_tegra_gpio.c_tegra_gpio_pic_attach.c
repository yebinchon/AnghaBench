
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct tegra_gpio_softc {int gpio_npins; int dev; TYPE_1__* isrcs; } ;
struct TYPE_2__ {size_t irq; int isrc; scalar_t__ cfgreg; } ;


 int ENXIO ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int OF_xref_from_node (int ) ;
 char* device_get_nameunit (int ) ;
 int intr_isrc_register (int *,int ,int ,char*,char const*,size_t) ;
 int * intr_pic_register (int ,int ) ;
 TYPE_1__* malloc (int,int ,int) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
tegra_gpio_pic_attach(struct tegra_gpio_softc *sc)
{
 int error;
 uint32_t irq;
 const char *name;

 sc->isrcs = malloc(sizeof(*sc->isrcs) * sc->gpio_npins, M_DEVBUF,
     M_WAITOK | M_ZERO);

 name = device_get_nameunit(sc->dev);
 for (irq = 0; irq < sc->gpio_npins; irq++) {
  sc->isrcs[irq].irq = irq;
  sc->isrcs[irq].cfgreg = 0;
  error = intr_isrc_register(&sc->isrcs[irq].isrc,
      sc->dev, 0, "%s,%u", name, irq);
  if (error != 0)
   return (error);
 }
 if (intr_pic_register(sc->dev,
     OF_xref_from_node(ofw_bus_get_node(sc->dev))) == ((void*)0))
  return (ENXIO);

 return (0);
}
