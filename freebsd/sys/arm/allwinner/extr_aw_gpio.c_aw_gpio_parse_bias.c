
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int phandle_t ;
typedef int bias ;


 int AW_GPIO_NONE ;
 int AW_GPIO_PULLDOWN ;
 int AW_GPIO_PULLUP ;
 int OF_getencprop (int ,char*,int *,int) ;
 scalar_t__ OF_hasprop (int ,char*) ;

__attribute__((used)) static uint32_t
aw_gpio_parse_bias(phandle_t node)
{
 uint32_t bias;

 if (OF_getencprop(node, "pull", &bias, sizeof(bias)) != -1)
  return (bias);
 if (OF_getencprop(node, "allwinner,pull", &bias, sizeof(bias)) != -1)
  return (bias);
 if (OF_hasprop(node, "bias-disable"))
  return (AW_GPIO_NONE);
 if (OF_hasprop(node, "bias-pull-up"))
  return (AW_GPIO_PULLUP);
 if (OF_hasprop(node, "bias-pull-down"))
  return (AW_GPIO_PULLDOWN);

 return (AW_GPIO_NONE);
}
