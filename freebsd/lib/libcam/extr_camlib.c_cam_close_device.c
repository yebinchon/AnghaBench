
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_device {int dummy; } ;


 int cam_close_spec_device (struct cam_device*) ;
 int free (struct cam_device*) ;

void
cam_close_device(struct cam_device *dev)
{
 if (dev == ((void*)0))
  return;

 cam_close_spec_device(dev);

 free(dev);
}
