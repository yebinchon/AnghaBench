
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ platform_mpp_init () ;

void
platform_gpio_init(void)
{





 if (platform_mpp_init() != 0)
  while (1);
}
