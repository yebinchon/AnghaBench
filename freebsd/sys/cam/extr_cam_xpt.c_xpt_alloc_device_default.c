
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_et {int dummy; } ;
struct cam_ed {int mintags; int maxtags; } ;
struct cam_eb {int dummy; } ;
typedef int lun_id_t ;


 struct cam_ed* xpt_alloc_device (struct cam_eb*,struct cam_et*,int ) ;

__attribute__((used)) static struct cam_ed *
xpt_alloc_device_default(struct cam_eb *bus, struct cam_et *target,
    lun_id_t lun_id)
{
 struct cam_ed *device;

 device = xpt_alloc_device(bus, target, lun_id);
 if (device == ((void*)0))
  return (((void*)0));

 device->mintags = 1;
 device->maxtags = 1;
 return (device);
}
