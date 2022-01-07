
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct aw_gpio_softc {TYPE_2__* padconf; } ;
struct TYPE_4__ {int npins; TYPE_1__* pins; } ;
struct TYPE_3__ {int name; } ;


 int strcmp (char const*,int ) ;

__attribute__((used)) static int
aw_find_pinnum_by_name(struct aw_gpio_softc *sc, const char *pinname)
{
 int i;

 for (i = 0; i < sc->padconf->npins; i++)
  if (!strcmp(pinname, sc->padconf->pins[i].name))
   return i;

 return (-1);
}
