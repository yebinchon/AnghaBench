
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rk30_gpio_softc {int sc_bank; int sc_gpio_npins; int sc_mtx; void* sc_mem_res; void* sc_irq_res; int * sc_busdev; TYPE_1__* sc_gpio_pins; int sc_dev; int sc_bsh; int sc_bst; } ;
typedef int phandle_t ;
typedef int device_t ;
struct TYPE_2__ {int gp_pin; int gp_flags; int gp_caps; int gp_name; } ;


 int ENXIO ;
 int GPIOMAXNAME ;
 int MTX_DEF ;
 int OF_hasprop (int ,char*) ;
 int RF_ACTIVE ;
 int RK30_GPIO_DEFAULT_CAPS ;
 int RK30_GPIO_PINS ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int ,void*) ;
 struct rk30_gpio_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int * gpiobus_attach_bus (int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,char*,int ) ;
 int nitems (unsigned long*) ;
 int ofw_bus_get_node (int ) ;
 unsigned long* rk30_gpio_base_addr ;
 int rk30_gpio_get_function (struct rk30_gpio_softc*,int) ;
 int rk30_gpio_init () ;
 struct rk30_gpio_softc* rk30_gpio_sc ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;
 unsigned long rman_get_start (void*) ;
 int snprintf (int ,int ,char*,int) ;

__attribute__((used)) static int
rk30_gpio_attach(device_t dev)
{
 struct rk30_gpio_softc *sc = device_get_softc(dev);
 int i, rid;
 phandle_t gpio;
 unsigned long start;

 if (rk30_gpio_sc)
  return (ENXIO);
 sc->sc_dev = dev;
 mtx_init(&sc->sc_mtx, "rk30 gpio", "gpio", MTX_DEF);

 rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->sc_mem_res) {
  device_printf(dev, "cannot allocate memory window\n");
  goto fail;
 }
 sc->sc_bst = rman_get_bustag(sc->sc_mem_res);
 sc->sc_bsh = rman_get_bushandle(sc->sc_mem_res);

 sc->sc_bank = -1;
 start = rman_get_start(sc->sc_mem_res);
 for (i = 0; i < nitems(rk30_gpio_base_addr); i++) {
  if (rk30_gpio_base_addr[i] == start) {
   sc->sc_bank = i;
   break;
  }
 }
 if (sc->sc_bank == -1) {
  device_printf(dev,
      "unsupported device unit (only GPIO0..3 are supported)\n");
  goto fail;
 }

 rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (!sc->sc_irq_res) {
  device_printf(dev, "cannot allocate interrupt\n");
  goto fail;
 }


 gpio = ofw_bus_get_node(sc->sc_dev);

 if (!OF_hasprop(gpio, "gpio-controller"))

  goto fail;


 for (i = 0; i < RK30_GPIO_PINS; i++) {
  snprintf(sc->sc_gpio_pins[i].gp_name, GPIOMAXNAME,
      "pin %d", i);
  sc->sc_gpio_pins[i].gp_pin = i;
  sc->sc_gpio_pins[i].gp_caps = RK30_GPIO_DEFAULT_CAPS;
  sc->sc_gpio_pins[i].gp_flags = rk30_gpio_get_function(sc, i);
 }
 sc->sc_gpio_npins = i;
 rk30_gpio_sc = sc;
 rk30_gpio_init();
 sc->sc_busdev = gpiobus_attach_bus(dev);
 if (sc->sc_busdev == ((void*)0))
  goto fail;

 return (0);

fail:
 if (sc->sc_irq_res)
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
 if (sc->sc_mem_res)
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
 mtx_destroy(&sc->sc_mtx);

 return (ENXIO);
}
