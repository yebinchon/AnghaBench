
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_10__ {int dev_children; int dev_module; } ;


 int M_DEVBUF ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int dev_link ;
 int devclass_delete_device (int ,TYPE_1__*) ;
 int device_detach (TYPE_1__*) ;
 int device_printf (TYPE_1__*,char*) ;
 int free (TYPE_1__*,int ) ;

int
device_delete_child(device_t dev, device_t child)
{
 int error = 0;
 device_t grandchild;


 error = device_detach(child);
 if (error)
  goto done;


 while ((grandchild = TAILQ_FIRST(&child->dev_children))) {
  error = device_delete_child(child, grandchild);
  if (error) {
   device_printf(dev, "Error deleting child!\n");
   goto done;
  }
 }

 devclass_delete_device(child->dev_module, child);

 if (dev != ((void*)0)) {

  TAILQ_REMOVE(&dev->dev_children, child, dev_link);
 }
 free(child, M_DEVBUF);

done:
 return (error);
}
