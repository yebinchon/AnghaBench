
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_map_t ;


 int * kernel_map ;

bool
db_map_equal(vm_map_t map1, vm_map_t map2)
{
 return ((map1 == map2) ||
  ((map1 == ((void*)0)) && (map2 == kernel_map)) ||
  ((map1 == kernel_map) && (map2 == ((void*)0))));
}
