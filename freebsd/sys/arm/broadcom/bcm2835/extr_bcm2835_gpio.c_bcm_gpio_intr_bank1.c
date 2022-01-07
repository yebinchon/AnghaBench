
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcm_gpio_intr_internal (void*,int) ;

__attribute__((used)) static int
bcm_gpio_intr_bank1(void *arg)
{

 return (bcm_gpio_intr_internal(arg, 1));
}
