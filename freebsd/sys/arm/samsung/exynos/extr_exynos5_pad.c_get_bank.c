
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pad_softc {struct gpio_bank* gpio_map; } ;
struct gpio_bank {int ngpio; } ;



__attribute__((used)) static int
get_bank(struct pad_softc *sc, int gpio_number,
    struct gpio_bank *bank, int *pin_shift)
{
 int ngpio;
 int i;
 int n;

 n = 0;
 for (i = 0; sc->gpio_map[i].ngpio != -1; i++) {
  ngpio = sc->gpio_map[i].ngpio;

  if ((n + ngpio) > gpio_number) {
   *bank = sc->gpio_map[i];
   *pin_shift = (gpio_number - n);
   return (0);
  }

  n += ngpio;
 }

 return (-1);
}
