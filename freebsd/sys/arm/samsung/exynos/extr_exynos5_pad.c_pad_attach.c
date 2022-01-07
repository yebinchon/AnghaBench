
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pad_softc {int model; int gpio_npins; int nports; int sc_mtx; int * res; int pad_spec; scalar_t__* gpio_ih; int * busdev; TYPE_1__* gpio_pins; int dev; int * bsh; int * bst; int interrupt_table; int gpio_map; } ;
struct gpio_bank {int con; int port; } ;
typedef int device_t ;
struct TYPE_4__ {int ocd_data; } ;
struct TYPE_3__ {int gp_pin; int gp_name; int gp_flags; int gp_caps; } ;


 int DEFAULT_CAPS ;
 int ENXIO ;


 int GPIOMAXNAME ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OUTPUT ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int MTX_DEF ;
 int PIN_OUT ;
 int READ4 (struct pad_softc*,int ,int ) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_release_resources (int ,int ,int *) ;
 scalar_t__ bus_setup_intr (int ,int ,int,int ,int *,struct pad_softc*,scalar_t__*) ;
 int bus_teardown_intr (int ,int ,scalar_t__) ;
 int compat_data ;
 int device_get_nameunit (int ) ;
 struct pad_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ get_bank (struct pad_softc*,int,struct gpio_bank*,int*) ;
 int gpio_map_5250 ;
 int gpio_map_5420 ;
 struct pad_softc* gpio_sc ;
 int * gpiobus_attach_bus (int ) ;
 int interrupt_table_5250 ;
 int interrupt_table_5420 ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,int *,int ) ;
 TYPE_2__* ofw_bus_search_compatible (int ,int ) ;
 int pad_spec_5250 ;
 int pad_spec_5420 ;
 int port_intr ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 int snprintf (int ,int ,char*,int,int) ;

__attribute__((used)) static int
pad_attach(device_t dev)
{
 struct gpio_bank bank;
 struct pad_softc *sc;
 int pin_shift;
 int reg;
 int i;

 sc = device_get_softc(dev);

 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);

 sc->model = ofw_bus_search_compatible(dev, compat_data)->ocd_data;
 switch (sc->model) {
 case 129:
  sc->pad_spec = pad_spec_5250;
  sc->gpio_map = gpio_map_5250;
  sc->interrupt_table = interrupt_table_5250;
  sc->gpio_npins = 253;
  sc->nports = 4;
  break;
 case 128:
  sc->pad_spec = pad_spec_5420;
  sc->gpio_map = gpio_map_5420;
  sc->interrupt_table = interrupt_table_5420;
  sc->gpio_npins = 232;
  sc->nports = 5;
  break;
 default:
  goto fail;
 }

 if (bus_alloc_resources(dev, sc->pad_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  goto fail;
 }



 for (i = 0; i < sc->nports; i++) {
  sc->bst[i] = rman_get_bustag(sc->res[i]);
  sc->bsh[i] = rman_get_bushandle(sc->res[i]);
 }

 sc->dev = dev;

 gpio_sc = sc;

 for (i = 0; i < sc->nports; i++) {
  if ((bus_setup_intr(dev, sc->res[sc->nports + i],
       INTR_TYPE_BIO | INTR_MPSAFE, port_intr,
       ((void*)0), sc, &sc->gpio_ih[i]))) {
   device_printf(dev,
       "ERROR: Unable to register interrupt handler\n");
   goto fail;
  }
 }

 for (i = 0; i < sc->gpio_npins; i++) {
  sc->gpio_pins[i].gp_pin = i;
  sc->gpio_pins[i].gp_caps = DEFAULT_CAPS;

  if (get_bank(sc, i, &bank, &pin_shift) != 0)
   continue;

  pin_shift *= 4;

  reg = READ4(sc, bank.port, bank.con);
  if (reg & (PIN_OUT << pin_shift))
   sc->gpio_pins[i].gp_flags = GPIO_PIN_OUTPUT;
  else
   sc->gpio_pins[i].gp_flags = GPIO_PIN_INPUT;



  snprintf(sc->gpio_pins[i].gp_name, GPIOMAXNAME,
      "pad%d.%d", device_get_unit(dev), i);
 }
 sc->busdev = gpiobus_attach_bus(dev);
 if (sc->busdev == ((void*)0))
  goto fail;

 return (0);

fail:
 for (i = 0; i < sc->nports; i++) {
  if (sc->gpio_ih[i])
   bus_teardown_intr(dev, sc->res[sc->nports + i],
       sc->gpio_ih[i]);
 }
 bus_release_resources(dev, sc->pad_spec, sc->res);
 mtx_destroy(&sc->sc_mtx);

 return (ENXIO);
}
