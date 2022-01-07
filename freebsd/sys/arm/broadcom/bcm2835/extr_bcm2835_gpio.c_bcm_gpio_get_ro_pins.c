
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_gpio_softc {int* sc_ro_pins; int sc_ro_npins; int sc_dev; } ;
typedef int phandle_t ;
typedef int pcell_t ;


 int OF_getencprop_alloc_multi (int ,char const*,int,void**) ;
 int OF_prop_free (int*) ;
 int device_printf (int ,char*,char const*) ;
 int printf (char*,...) ;

__attribute__((used)) static int
bcm_gpio_get_ro_pins(struct bcm_gpio_softc *sc, phandle_t node,
 const char *propname, const char *label)
{
 int i, need_comma, npins, range_start, range_stop;
 pcell_t *pins;


 npins = OF_getencprop_alloc_multi(node, propname, sizeof(*pins),
     (void **)&pins);
 if (npins < 0)
  return (-1);
 if (npins == 0) {
  OF_prop_free(pins);
  return (0);
 }
 for (i = 0; i < npins; i++)
  sc->sc_ro_pins[i + sc->sc_ro_npins] = pins[i];
 sc->sc_ro_npins += npins;
 need_comma = 0;
 device_printf(sc->sc_dev, "%s pins: ", label);
 range_start = range_stop = pins[0];
 for (i = 1; i < npins; i++) {
  if (pins[i] != range_stop + 1) {
   if (need_comma)
    printf(",");
   if (range_start != range_stop)
    printf("%d-%d", range_start, range_stop);
   else
    printf("%d", range_start);
   range_start = range_stop = pins[i];
   need_comma = 1;
  } else
   range_stop++;
 }
 if (need_comma)
  printf(",");
 if (range_start != range_stop)
  printf("%d-%d.\n", range_start, range_stop);
 else
  printf("%d.\n", range_start);
 OF_prop_free(pins);

 return (0);
}
