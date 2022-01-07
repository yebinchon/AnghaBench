
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct rk_pinctrl_softc {TYPE_2__* conf; } ;
struct TYPE_4__ {int npin_fixup; TYPE_1__* pin_fixup; } ;
struct TYPE_3__ {scalar_t__ bank; scalar_t__ pin; scalar_t__ reg; scalar_t__ mask; scalar_t__ bit; } ;



__attribute__((used)) static void
rk_pinctrl_get_fixup(struct rk_pinctrl_softc *sc, uint32_t bank, uint32_t pin,
    uint32_t *reg, uint32_t *mask, uint32_t *bit)
{
 int i;

 for (i = 0; i < sc->conf->npin_fixup; i++)
  if (sc->conf->pin_fixup[i].bank == bank &&
      sc->conf->pin_fixup[i].pin == pin) {
   *reg = sc->conf->pin_fixup[i].reg;
   *mask = sc->conf->pin_fixup[i].mask;
   *bit = sc->conf->pin_fixup[i].bit;

   return;
  }
}
