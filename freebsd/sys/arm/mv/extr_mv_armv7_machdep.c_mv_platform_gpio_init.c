
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 scalar_t__ platform_mpp_init () ;

__attribute__((used)) static void
mv_platform_gpio_init(platform_t plate)
{





 if (platform_mpp_init() != 0)
  while (1);
}
