
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct device_method {void* func; int desc; } ;
typedef TYPE_3__* device_t ;
struct TYPE_7__ {TYPE_2__* dev_module; } ;
struct TYPE_6__ {TYPE_1__* driver; } ;
struct TYPE_5__ {struct device_method* methods; } ;


 int default_method ;
 scalar_t__ devclass_equal (int ,char const*) ;

void *
device_get_method(device_t dev, const char *what)
{
 const struct device_method *mtod;

 mtod = dev->dev_module->driver->methods;
 while (mtod->func != ((void*)0)) {
  if (devclass_equal(mtod->desc, what)) {
   return (mtod->func);
  }
  mtod++;
 }
 return ((void *)&default_method);
}
