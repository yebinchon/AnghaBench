
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct ti_pinmux_softc {int sc_dev; } ;
struct ti_pinmux_padconf {int reg_off; int ** muxmodes; } ;
struct TYPE_2__ {unsigned int padconf_sate_mask; unsigned int padconf_muxmode_mask; } ;


 int EINVAL ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int ,char const*) ;
 int printf (char*,char const*) ;
 scalar_t__ strcmp (int *,char const*) ;
 TYPE_1__* ti_pinmux_dev ;
 int ti_pinmux_write_2 (struct ti_pinmux_softc*,int ,int ) ;

__attribute__((used)) static int
ti_pinmux_padconf_set_internal(struct ti_pinmux_softc *sc,
    const struct ti_pinmux_padconf *padconf,
    const char *muxmode, unsigned int state)
{
 unsigned int mode;
 uint16_t reg_val;


 reg_val = (uint16_t)(state & ti_pinmux_dev->padconf_sate_mask);


 for (mode = 0; mode < 8; mode++) {
  if ((padconf->muxmodes[mode] != ((void*)0)) &&
      (strcmp(padconf->muxmodes[mode], muxmode) == 0)) {
   break;
  }
 }


 if (mode >= 8) {
  printf("Invalid mode \"%s\"\n", muxmode);
  return (EINVAL);
 }


 reg_val |= (uint16_t)(mode & ti_pinmux_dev->padconf_muxmode_mask);

 if (bootverbose)
  device_printf(sc->sc_dev, "setting internal %x for %s\n",
      reg_val, muxmode);

 ti_pinmux_write_2(sc, padconf->reg_off, reg_val);

 return (0);
}
