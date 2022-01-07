
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 scalar_t__ OF_hasprop (int ,char*) ;

__attribute__((used)) static int
rk_pinctrl_parse_bias(phandle_t node)
{
 if (OF_hasprop(node, "bias-disable"))
  return (0);
 if (OF_hasprop(node, "bias-pull-up"))
  return (1);
 if (OF_hasprop(node, "bias-pull-down"))
  return (2);

 return (-1);
}
