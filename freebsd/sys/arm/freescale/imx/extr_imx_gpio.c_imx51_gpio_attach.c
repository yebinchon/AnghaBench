
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imx51_gpio_softc {int gpio_npins; int * sc_busdev; TYPE_1__* gpio_pins; int * gpio_ih; int * sc_res; int sc_ioh; int sc_iot; int sc_mtx; int dev; } ;
typedef int device_t ;
struct TYPE_2__ {int gp_pin; int gp_name; int gp_flags; int gp_caps; } ;


 int DEFAULT_CAPS ;
 int ENXIO ;
 int GPIOMAXNAME ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OUTPUT ;
 int IMX_GPIO_IMR_REG ;
 int IMX_GPIO_OE_REG ;
 int INTR_TYPE_CLK ;
 int MTX_SPIN ;
 int NGPIO ;
 int OF_xref_from_node (int ) ;
 unsigned int READ4 (struct imx51_gpio_softc*,int ) ;
 int WRITE4 (struct imx51_gpio_softc*,int ,int ) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_release_resources (int ,int ,int *) ;
 scalar_t__ bus_setup_intr (int ,int ,int ,int ,int *,struct imx51_gpio_softc*,int *) ;
 int device_get_nameunit (int ) ;
 struct imx51_gpio_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int gpio_pic_filter ;
 int gpio_pic_register_isrcs (struct imx51_gpio_softc*) ;
 int * gpiobus_attach_bus (int ) ;
 int imx51_gpio_detach (int ) ;
 int imx_gpio_spec ;
 int intr_pic_register (int ,int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,int *,int ) ;
 int ofw_bus_get_node (int ) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 int snprintf (int ,int ,char*,int,int) ;

__attribute__((used)) static int
imx51_gpio_attach(device_t dev)
{
 struct imx51_gpio_softc *sc;
 int i, irq, unit;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->gpio_npins = NGPIO;

 mtx_init(&sc->sc_mtx, device_get_nameunit(sc->dev), ((void*)0), MTX_SPIN);

 if (bus_alloc_resources(dev, imx_gpio_spec, sc->sc_res)) {
  device_printf(dev, "could not allocate resources\n");
  bus_release_resources(dev, imx_gpio_spec, sc->sc_res);
  mtx_destroy(&sc->sc_mtx);
  return (ENXIO);
 }

 sc->sc_iot = rman_get_bustag(sc->sc_res[0]);
 sc->sc_ioh = rman_get_bushandle(sc->sc_res[0]);



 WRITE4(sc, IMX_GPIO_IMR_REG, 0);
 for (irq = 0; irq < 2; irq++) {
 }

 unit = device_get_unit(dev);
 for (i = 0; i < sc->gpio_npins; i++) {
   sc->gpio_pins[i].gp_pin = i;
   sc->gpio_pins[i].gp_caps = DEFAULT_CAPS;
   sc->gpio_pins[i].gp_flags =
       (READ4(sc, IMX_GPIO_OE_REG) & (1U << i)) ? GPIO_PIN_OUTPUT :
       GPIO_PIN_INPUT;
   snprintf(sc->gpio_pins[i].gp_name, GPIOMAXNAME,
       "GPIO%d_IO%02d", unit + 1, i);
 }





 sc->sc_busdev = gpiobus_attach_bus(dev);

 if (sc->sc_busdev == ((void*)0)) {
  imx51_gpio_detach(dev);
  return (ENXIO);
 }

 return (0);
}
