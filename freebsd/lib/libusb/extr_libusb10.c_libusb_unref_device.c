
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ refcnt; int os_priv; int ctx; } ;
typedef TYPE_1__ libusb_device ;


 int CTX_LOCK (int ) ;
 int CTX_UNLOCK (int ) ;
 int free (TYPE_1__*) ;
 int libusb20_dev_free (int ) ;

void
libusb_unref_device(libusb_device *dev)
{
 if (dev == ((void*)0))
  return;

 CTX_LOCK(dev->ctx);
 dev->refcnt--;
 CTX_UNLOCK(dev->ctx);

 if (dev->refcnt == 0) {
  libusb20_dev_free(dev->os_priv);
  free(dev);
 }
}
