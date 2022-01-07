
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
struct ti_pinmux_padconf {char** muxmodes; int reg_off; } ;
struct TYPE_2__ {size_t padconf_sate_mask; size_t padconf_muxmode_mask; } ;


 int EINVAL ;
 int ENXIO ;
 TYPE_1__* ti_pinmux_dev ;
 struct ti_pinmux_padconf* ti_pinmux_padconf_from_name (char const*) ;
 size_t ti_pinmux_read_2 (int ,int ) ;
 int ti_pinmux_sc ;

int
ti_pinmux_padconf_get(const char *padname, const char **muxmode,
    unsigned int *state)
{
 const struct ti_pinmux_padconf *padconf;
 uint16_t reg_val;

 if (!ti_pinmux_sc)
  return (ENXIO);


 padconf = ti_pinmux_padconf_from_name(padname);
 if (padconf == ((void*)0))
  return (EINVAL);


 reg_val = ti_pinmux_read_2(ti_pinmux_sc, padconf->reg_off);


 if (state)
  *state = (reg_val & ti_pinmux_dev->padconf_sate_mask);


 if (muxmode)
  *muxmode = padconf->muxmodes[(reg_val & ti_pinmux_dev->padconf_muxmode_mask)];

 return (0);
}
