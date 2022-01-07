
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct module_data {int dummy; } ;
typedef TYPE_1__* device_t ;
struct TYPE_6__ {scalar_t__ dev_fixed_class; scalar_t__ dev_attached; struct module_data* dev_module; } ;


 int DEVICE_DETACH (TYPE_1__*) ;
 int devclass_delete_device (struct module_data const*,TYPE_1__*) ;
 int device_set_softc (TYPE_1__*,int *) ;

int
device_detach(device_t dev)
{
 const struct module_data *mod = dev->dev_module;
 int error;

 if (dev->dev_attached) {

  error = DEVICE_DETACH(dev);
  if (error) {
   return error;
  }
  dev->dev_attached = 0;
 }
 device_set_softc(dev, ((void*)0));

 if (dev->dev_fixed_class == 0)
  devclass_delete_device(mod, dev);

 return (0);
}
