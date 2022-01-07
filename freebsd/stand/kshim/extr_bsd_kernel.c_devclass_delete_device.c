
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct module_data {TYPE_1__** devclass_pp; } ;
typedef TYPE_2__* device_t ;
struct TYPE_5__ {size_t dev_unit; int * dev_module; } ;
struct TYPE_4__ {int ** dev_list; } ;



__attribute__((used)) static void
devclass_delete_device(const struct module_data *mod, device_t dev)
{
 if (mod == ((void*)0)) {
  return;
 }
 mod->devclass_pp[0]->dev_list[dev->dev_unit] = ((void*)0);
 dev->dev_module = ((void*)0);
}
