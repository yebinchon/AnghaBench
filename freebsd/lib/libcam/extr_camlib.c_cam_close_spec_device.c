
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_device {int fd; } ;


 int close (int) ;

void
cam_close_spec_device(struct cam_device *dev)
{
 if (dev == ((void*)0))
  return;

 if (dev->fd >= 0) {
  close(dev->fd);
  dev->fd = -1;
 }
}
