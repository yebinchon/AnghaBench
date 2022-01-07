
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int OF_getprop_alloc (int ,char*,void**) ;
 int OF_parent (int ) ;

__attribute__((used)) static inline int
ti_get_hwmods_prop(phandle_t node, void **name)
{
 int len;

 if ((len = OF_getprop_alloc(node, "ti,hwmods", name)) > 0)
  return (len);
 return (OF_getprop_alloc(OF_parent(node), "ti,hwmods", name));
}
