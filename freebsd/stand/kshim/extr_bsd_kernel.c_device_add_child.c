
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_8__ {int dev_children; } ;


 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int dev_link ;
 int device_printf (TYPE_1__*,char*,...) ;
 TYPE_1__* make_device (TYPE_1__*,char const*) ;

device_t
device_add_child(device_t dev, const char *name, int unit)
{
 device_t child;

 if (unit != -1) {
  device_printf(dev, "Unit is not -1\n");
 }
 child = make_device(dev, name);
 if (child == ((void*)0)) {
  device_printf(dev, "Could not add child '%s'\n", name);
  goto done;
 }
 if (dev == ((void*)0)) {

  goto done;
 }
 TAILQ_INSERT_TAIL(&dev->dev_children, child, dev_link);
done:
 return (child);
}
