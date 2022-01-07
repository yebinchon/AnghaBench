
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct bcm_gpio_softc {int sc_gpio_npins; int sc_mtx; int * sc_res; int * sc_busdev; TYPE_1__* sc_gpio_pins; int sc_dev; int sc_bsh; int sc_bst; } ;
typedef int phandle_t ;
typedef int device_t ;
struct TYPE_2__ {int gp_pin; int gp_flags; int gp_caps; int gp_name; } ;


 int BCM_GPIO_DEFAULT_CAPS ;
 int BCM_GPIO_PINS ;
 int ENXIO ;
 int GPIOMAXNAME ;
 int MTX_SPIN ;
 int OF_hasprop (int ,char*) ;
 int bcm_gpio_func_flag (int ) ;
 int bcm_gpio_get_function (struct bcm_gpio_softc*,int) ;
 int bcm_gpio_get_reserved_pins (struct bcm_gpio_softc*) ;
 scalar_t__ bcm_gpio_intr_attach (int ) ;
 int bcm_gpio_intr_detach (int ) ;
 int bcm_gpio_res_spec ;
 struct bcm_gpio_softc* bcm_gpio_sc ;
 int bcm_gpio_sysctl_init (struct bcm_gpio_softc*) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_release_resources (int ,int ,int *) ;
 struct bcm_gpio_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int fdt_pinctrl_configure_tree (int ) ;
 int fdt_pinctrl_register (int ,char*) ;
 int * gpiobus_attach_bus (int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,char*,int ) ;
 int ofw_bus_get_node (int ) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 int snprintf (int ,int ,char*,int) ;

__attribute__((used)) static int
bcm_gpio_attach(device_t dev)
{
 int i, j;
 phandle_t gpio;
 struct bcm_gpio_softc *sc;
 uint32_t func;

 if (bcm_gpio_sc != ((void*)0))
  return (ENXIO);

 bcm_gpio_sc = sc = device_get_softc(dev);
  sc->sc_dev = dev;
 mtx_init(&sc->sc_mtx, "bcm gpio", "gpio", MTX_SPIN);
 if (bus_alloc_resources(dev, bcm_gpio_res_spec, sc->sc_res) != 0) {
  device_printf(dev, "cannot allocate resources\n");
  goto fail;
 }
 sc->sc_bst = rman_get_bustag(sc->sc_res[0]);
 sc->sc_bsh = rman_get_bushandle(sc->sc_res[0]);

 if (bcm_gpio_intr_attach(dev)) {
  device_printf(dev, "unable to setup the gpio irq handler\n");
  goto fail;
 }

 gpio = ofw_bus_get_node(sc->sc_dev);
 if (!OF_hasprop(gpio, "gpio-controller"))

  goto fail;




 if (bcm_gpio_get_reserved_pins(sc) == -1)
  goto fail;

 for (i = 0, j = 0; j < BCM_GPIO_PINS; j++) {
  snprintf(sc->sc_gpio_pins[i].gp_name, GPIOMAXNAME,
      "pin %d", j);
  func = bcm_gpio_get_function(sc, j);
  sc->sc_gpio_pins[i].gp_pin = j;
  sc->sc_gpio_pins[i].gp_caps = BCM_GPIO_DEFAULT_CAPS;
  sc->sc_gpio_pins[i].gp_flags = bcm_gpio_func_flag(func);
  i++;
 }
 sc->sc_gpio_npins = i;
 bcm_gpio_sysctl_init(sc);
 sc->sc_busdev = gpiobus_attach_bus(dev);
 if (sc->sc_busdev == ((void*)0))
  goto fail;

 fdt_pinctrl_register(dev, "brcm,pins");
 fdt_pinctrl_configure_tree(dev);

 return (0);

fail:
 bcm_gpio_intr_detach(dev);
 bus_release_resources(dev, bcm_gpio_res_spec, sc->sc_res);
 mtx_destroy(&sc->sc_mtx);

 return (ENXIO);
}
