
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef unsigned int uint16_t ;
struct ti_pinmux_padconf {scalar_t__ gpio_pin; unsigned int gpio_mode; int reg_off; int * ballname; } ;
struct TYPE_2__ {unsigned int padconf_muxmode_mask; unsigned int padconf_sate_mask; struct ti_pinmux_padconf* padconf; } ;


 int EINVAL ;
 int ENXIO ;
 TYPE_1__* ti_pinmux_dev ;
 unsigned int ti_pinmux_read_2 (int ,int ) ;
 int ti_pinmux_sc ;

int
ti_pinmux_padconf_get_gpiomode(uint32_t gpio, unsigned int *state)
{
 const struct ti_pinmux_padconf *padconf;
 uint16_t reg_val;

 if (!ti_pinmux_sc)
  return (ENXIO);


 padconf = ti_pinmux_dev->padconf;
 while (padconf->ballname != ((void*)0)) {
  if (padconf->gpio_pin == gpio)
   break;
  padconf++;
 }
 if (padconf->ballname == ((void*)0))
  return (EINVAL);


 reg_val = ti_pinmux_read_2(ti_pinmux_sc, padconf->reg_off);


 if ((reg_val & ti_pinmux_dev->padconf_muxmode_mask) != padconf->gpio_mode)
  return (EINVAL);


 if (state)
  *state = (reg_val & ti_pinmux_dev->padconf_sate_mask);

 return (0);
}
