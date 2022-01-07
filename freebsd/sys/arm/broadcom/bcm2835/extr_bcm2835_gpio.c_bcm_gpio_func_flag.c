
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;




 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OUTPUT ;

__attribute__((used)) static uint32_t
bcm_gpio_func_flag(uint32_t nfunc)
{

 switch (nfunc) {
 case 129:
  return (GPIO_PIN_INPUT);
 case 128:
  return (GPIO_PIN_OUTPUT);
 }
 return (0);
}
