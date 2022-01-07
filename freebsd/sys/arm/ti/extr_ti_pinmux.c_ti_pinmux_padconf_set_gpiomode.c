
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct ti_pinmux_padconf {scalar_t__ gpio_pin; int gpio_mode; int reg_off; int * ballname; } ;
struct TYPE_2__ {unsigned int padconf_sate_mask; int padconf_muxmode_mask; struct ti_pinmux_padconf* padconf; } ;


 int EINVAL ;
 int ENXIO ;
 TYPE_1__* ti_pinmux_dev ;
 int ti_pinmux_sc ;
 int ti_pinmux_write_2 (int ,int ,int ) ;

int
ti_pinmux_padconf_set_gpiomode(uint32_t gpio, unsigned int state)
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


 reg_val = (uint16_t)(state & ti_pinmux_dev->padconf_sate_mask);


 reg_val |= (uint16_t)(padconf->gpio_mode & ti_pinmux_dev->padconf_muxmode_mask);


 ti_pinmux_write_2(ti_pinmux_sc, padconf->reg_off, reg_val);

 return (0);
}
