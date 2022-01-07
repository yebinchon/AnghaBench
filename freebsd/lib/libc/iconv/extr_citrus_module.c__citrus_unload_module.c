
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ _citrus_module_t ;


 int dlclose (void*) ;

void
_citrus_unload_module(_citrus_module_t handle)
{

 if (handle)
  dlclose((void *)handle);
}
