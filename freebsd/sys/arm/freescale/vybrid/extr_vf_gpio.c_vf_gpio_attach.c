
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vf_gpio_softc {int gpio_npins; int sc_mtx; int * res; int * sc_busdev; TYPE_1__* gpio_pins; int bsh; int bst; } ;
typedef int device_t ;
struct TYPE_2__ {int gp_pin; int gp_name; int gp_flags; int gp_caps; } ;


 int DEFAULT_CAPS ;
 int ENXIO ;
 int GPIOMAXNAME ;
 int GPIO_PDOR (int) ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OUTPUT ;
 int MTX_DEF ;
 int NGPIO ;
 int READ4 (struct vf_gpio_softc*,int ) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_release_resources (int ,int ,int *) ;
 int device_get_nameunit (int ) ;
 struct vf_gpio_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 struct vf_gpio_softc* gpio_sc ;
 int * gpiobus_attach_bus (int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,int *,int ) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 int snprintf (int ,int ,char*,int,int) ;
 int vf_gpio_spec ;

__attribute__((used)) static int
vf_gpio_attach(device_t dev)
{
 struct vf_gpio_softc *sc;
 int i;

 sc = device_get_softc(dev);
 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);

 if (bus_alloc_resources(dev, vf_gpio_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  mtx_destroy(&sc->sc_mtx);
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);

 gpio_sc = sc;

 sc->gpio_npins = NGPIO;

 for (i = 0; i < sc->gpio_npins; i++) {
  sc->gpio_pins[i].gp_pin = i;
  sc->gpio_pins[i].gp_caps = DEFAULT_CAPS;
  sc->gpio_pins[i].gp_flags =
      (READ4(sc, GPIO_PDOR(i)) & (1 << (i % 32))) ?
      GPIO_PIN_OUTPUT: GPIO_PIN_INPUT;
  snprintf(sc->gpio_pins[i].gp_name, GPIOMAXNAME,
      "vf_gpio%d.%d", device_get_unit(dev), i);
 }

 sc->sc_busdev = gpiobus_attach_bus(dev);
 if (sc->sc_busdev == ((void*)0)) {
  bus_release_resources(dev, vf_gpio_spec, sc->res);
  mtx_destroy(&sc->sc_mtx);
  return (ENXIO);
 }

 return (0);
}
