
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct module_data {TYPE_1__** devclass_pp; } ;
typedef TYPE_2__* device_t ;
struct TYPE_6__ {int dev_unit; int dev_nameunit; struct module_data const* dev_module; } ;
struct TYPE_5__ {TYPE_2__** dev_list; } ;


 int DEVCLASS_MAXUNIT ;
 int DPRINTF (char*) ;
 char* device_get_name (TYPE_2__*) ;
 int snprintf (int ,int,char*,char*,int) ;

__attribute__((used)) static uint8_t
devclass_add_device(const struct module_data *mod, device_t dev)
{
 device_t *pp_dev;
 device_t *end;
 uint8_t unit;

 pp_dev = mod->devclass_pp[0]->dev_list;
 end = pp_dev + DEVCLASS_MAXUNIT;
 unit = 0;

 while (pp_dev != end) {
  if (*pp_dev == ((void*)0)) {
   *pp_dev = dev;
   dev->dev_unit = unit;
   dev->dev_module = mod;
   snprintf(dev->dev_nameunit,
       sizeof(dev->dev_nameunit),
       "%s%d", device_get_name(dev), unit);
   return (0);
  }
  pp_dev++;
  unit++;
 }
 DPRINTF("Could not add device to devclass.\n");
 return (1);
}
