
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv_gpio_softc {int pin_num; int * irq_res; int * irq_rid; int mutex; int * sc_busdev; int mem_res; int bsh; int bst; scalar_t__ mem_rid; TYPE_1__* gpio_setup; scalar_t__ offset; int dev; } ;
typedef int phandle_t ;
typedef scalar_t__ pcell_t ;
typedef int device_t ;
struct TYPE_2__ {int gp_caps; } ;


 int ENXIO ;
 int GPIO_GENERIC_CAP ;
 int MIN (scalar_t__,int ) ;
 int MTX_SPIN ;
 int MV_GPIO_MAX_NPINS ;
 int OF_getencprop (int ,char*,scalar_t__*,int) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 int bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int device_get_nameunit (int ) ;
 scalar_t__ device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int * gpiobus_attach_bus (int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,int *,int ) ;
 int mv_gpio_setup_interrupts (struct mv_gpio_softc*,int ) ;
 int ofw_bus_get_node (int ) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
mv_gpio_attach(device_t dev)
{
 int i, rv;
 struct mv_gpio_softc *sc;
 phandle_t node;
 pcell_t pincnt = 0;

 sc = (struct mv_gpio_softc *)device_get_softc(dev);
 if (sc == ((void*)0))
  return (ENXIO);

 node = ofw_bus_get_node(dev);
 sc->dev = dev;

 if (OF_getencprop(node, "pin-count", &pincnt, sizeof(pcell_t)) >= 0 ||
     OF_getencprop(node, "ngpios", &pincnt, sizeof(pcell_t)) >= 0) {
  sc->pin_num = MIN(pincnt, MV_GPIO_MAX_NPINS);
  if (bootverbose)
   device_printf(dev, "%d pins available\n", sc->pin_num);
 } else {
  device_printf(dev, "ERROR: no pin-count or ngpios entry found!\n");
  return (ENXIO);
 }

 if (OF_getencprop(node, "offset", &sc->offset, sizeof(sc->offset)) == -1)
  sc->offset = 0;


 for(i = 0; i < sc->pin_num; i++)
  sc->gpio_setup[i].gp_caps = GPIO_GENERIC_CAP;

 mtx_init(&sc->mutex, device_get_nameunit(dev), ((void*)0), MTX_SPIN);

 sc->mem_rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->mem_rid,
   RF_ACTIVE | RF_SHAREABLE );

 if (!sc->mem_res) {
  mtx_destroy(&sc->mutex);
  device_printf(dev, "could not allocate memory window\n");
  return (ENXIO);
 }

 sc->bst = rman_get_bustag(sc->mem_res);
 sc->bsh = rman_get_bushandle(sc->mem_res);

 rv = mv_gpio_setup_interrupts(sc, node);
 if (rv != 0)
  return (rv);

 sc->sc_busdev = gpiobus_attach_bus(dev);
 if (sc->sc_busdev == ((void*)0)) {
  mtx_destroy(&sc->mutex);
  bus_release_resource(dev, SYS_RES_IRQ,
   sc->irq_rid[i], sc->irq_res[i]);
  return (ENXIO);
 }

 return (0);
}
