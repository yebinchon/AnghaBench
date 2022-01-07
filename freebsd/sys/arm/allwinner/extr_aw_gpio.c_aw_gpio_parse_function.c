
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int OF_getprop_alloc (int ,char*,void**) ;

__attribute__((used)) static char *
aw_gpio_parse_function(phandle_t node)
{
 char *function;

 if (OF_getprop_alloc(node, "function",
     (void **)&function) != -1)
  return (function);
 if (OF_getprop_alloc(node, "allwinner,function",
     (void **)&function) != -1)
  return (function);

 return (((void*)0));
}
