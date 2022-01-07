
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int ofw_bus_string_list_to_array (int ,char*,char const***) ;

__attribute__((used)) static const char **
aw_gpio_parse_pins(phandle_t node, int *pins_nb)
{
 const char **pinlist;

 *pins_nb = ofw_bus_string_list_to_array(node, "pins", &pinlist);
 if (*pins_nb > 0)
  return (pinlist);

 *pins_nb = ofw_bus_string_list_to_array(node, "allwinner,pins",
     &pinlist);
 if (*pins_nb > 0)
  return (pinlist);

 return (((void*)0));
}
