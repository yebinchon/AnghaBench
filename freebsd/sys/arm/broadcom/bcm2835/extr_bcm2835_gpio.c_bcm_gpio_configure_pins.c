
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm_gpio_softc {int dummy; } ;
typedef int phandle_t ;
typedef int name ;
typedef int function ;
typedef int device_t ;





 int EINVAL ;
 int ENOENT ;
 int GPIO_PIN_PULLDOWN ;
 int GPIO_PIN_PULLUP ;
 scalar_t__ OF_getencprop (int ,char*,int*,int) ;
 int OF_getencprop_alloc_multi (int ,char*,int,void**) ;
 int OF_getprop (int ,char*,char**,int) ;
 int OF_node_from_xref (int ) ;
 int OF_prop_free (int*) ;
 int bcm_gpio_pin_setflags (int ,int,int ) ;
 int bcm_gpio_set_alternate (int ,int,int) ;
 scalar_t__ bootverbose ;
 struct bcm_gpio_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int) ;
 int printf (char*,...) ;

__attribute__((used)) static int
bcm_gpio_configure_pins(device_t dev, phandle_t cfgxref)
{
 phandle_t cfgnode;
 int i, pintuples, pulltuples;
 uint32_t pin;
 uint32_t *pins;
 uint32_t *pulls;
 uint32_t function;
 static struct bcm_gpio_softc *sc;

 sc = device_get_softc(dev);
 cfgnode = OF_node_from_xref(cfgxref);

 pins = ((void*)0);
 pintuples = OF_getencprop_alloc_multi(cfgnode, "brcm,pins",
     sizeof(*pins), (void **)&pins);

 char name[32];
 OF_getprop(cfgnode, "name", &name, sizeof(name));

 if (pintuples < 0)
  return (ENOENT);

 if (pintuples == 0)
  return (0);

 if (OF_getencprop(cfgnode, "brcm,function", &function,
     sizeof(function)) <= 0) {
  OF_prop_free(pins);
  return (EINVAL);
 }

 pulls = ((void*)0);
 pulltuples = OF_getencprop_alloc_multi(cfgnode, "brcm,pull",
     sizeof(*pulls), (void **)&pulls);

 if ((pulls != ((void*)0)) && (pulltuples != pintuples)) {
  OF_prop_free(pins);
  OF_prop_free(pulls);
  return (EINVAL);
 }

 for (i = 0; i < pintuples; i++) {
  pin = pins[i];
  bcm_gpio_set_alternate(dev, pin, function);
  if (bootverbose)
   device_printf(dev, "set pin %d to func %d", pin, function);
  if (pulls) {
   if (bootverbose)
    printf(", pull %d", pulls[i]);
   switch (pulls[i]) {

   case 129:
    bcm_gpio_pin_setflags(dev, pin, 0);
    break;
   case 128:
    bcm_gpio_pin_setflags(dev, pin, GPIO_PIN_PULLUP);
    break;
   case 130:
    bcm_gpio_pin_setflags(dev, pin, GPIO_PIN_PULLDOWN);
    break;
   default:
    printf("%s: invalid pull value for pin %d: %d\n",
        name, pin, pulls[i]);
   }
  }
  if (bootverbose)
   printf("\n");
 }

 OF_prop_free(pins);
 if (pulls)
  OF_prop_free(pulls);

 return (0);
}
