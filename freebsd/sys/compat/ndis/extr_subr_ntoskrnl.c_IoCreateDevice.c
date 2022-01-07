
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int unicode_string ;
typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_9__ {TYPE_3__* dro_devobj; } ;
typedef TYPE_2__ driver_object ;
typedef int devobj_extension ;
struct TYPE_10__ {int do_type; int do_refcnt; int do_devtype; int do_stacksize; int do_alignreq; int do_characteristics; struct TYPE_10__* do_nextdev; TYPE_1__* do_devobj_ext; struct TYPE_10__* do_devext; int * do_vpb; int do_devlock; int * do_iotimer; int * do_attacheddev; int do_size; scalar_t__ do_flags; int * do_currirp; TYPE_2__* do_drvobj; } ;
typedef TYPE_3__ device_object ;
struct TYPE_8__ {int dve_size; TYPE_3__* dve_devobj; scalar_t__ dve_type; } ;


 int EVENT_TYPE_SYNC ;
 void* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePool (TYPE_3__*) ;
 int KeInitializeEvent (int *,int ,int ) ;
 int NonPagedPool ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int TRUE ;
 int bzero (TYPE_3__*,int) ;

uint32_t
IoCreateDevice(driver_object *drv, uint32_t devextlen, unicode_string *devname,
 uint32_t devtype, uint32_t devchars, uint8_t exclusive,
 device_object **newdev)
{
 device_object *dev;

 dev = ExAllocatePoolWithTag(NonPagedPool, sizeof(device_object), 0);
 if (dev == ((void*)0))
  return (STATUS_INSUFFICIENT_RESOURCES);

 dev->do_type = devtype;
 dev->do_drvobj = drv;
 dev->do_currirp = ((void*)0);
 dev->do_flags = 0;

 if (devextlen) {
  dev->do_devext = ExAllocatePoolWithTag(NonPagedPool,
      devextlen, 0);

  if (dev->do_devext == ((void*)0)) {
   ExFreePool(dev);
   return (STATUS_INSUFFICIENT_RESOURCES);
  }

  bzero(dev->do_devext, devextlen);
 } else
  dev->do_devext = ((void*)0);

 dev->do_size = sizeof(device_object) + devextlen;
 dev->do_refcnt = 1;
 dev->do_attacheddev = ((void*)0);
 dev->do_nextdev = ((void*)0);
 dev->do_devtype = devtype;
 dev->do_stacksize = 1;
 dev->do_alignreq = 1;
 dev->do_characteristics = devchars;
 dev->do_iotimer = ((void*)0);
 KeInitializeEvent(&dev->do_devlock, EVENT_TYPE_SYNC, TRUE);





 dev->do_vpb = ((void*)0);

 dev->do_devobj_ext = ExAllocatePoolWithTag(NonPagedPool,
     sizeof(devobj_extension), 0);

 if (dev->do_devobj_ext == ((void*)0)) {
  if (dev->do_devext != ((void*)0))
   ExFreePool(dev->do_devext);
  ExFreePool(dev);
  return (STATUS_INSUFFICIENT_RESOURCES);
 }

 dev->do_devobj_ext->dve_type = 0;
 dev->do_devobj_ext->dve_size = sizeof(devobj_extension);
 dev->do_devobj_ext->dve_devobj = dev;
 if (drv->dro_devobj == ((void*)0)) {
  drv->dro_devobj = dev;
  dev->do_nextdev = ((void*)0);
 } else {
  dev->do_nextdev = drv->dro_devobj;
  drv->dro_devobj = dev;
 }

 *newdev = dev;

 return (STATUS_SUCCESS);
}
