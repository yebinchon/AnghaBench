
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ctx; int refcnt; } ;
typedef TYPE_1__ libusb_device ;


 int CTX_LOCK (int ) ;
 int CTX_UNLOCK (int ) ;

libusb_device *
libusb_ref_device(libusb_device *dev)
{
 if (dev == ((void*)0))
  return (((void*)0));

 CTX_LOCK(dev->ctx);
 dev->refcnt++;
 CTX_UNLOCK(dev->ctx);

 return (dev);
}
