
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ccb {int dummy; } ccb ;
struct cam_device {int fd; } ;


 int CAMIOCOMMAND ;
 int ioctl (int ,int ,union ccb*) ;

int
cam_send_ccb(struct cam_device *device, union ccb *ccb)
{
 return(ioctl(device->fd, CAMIOCOMMAND, ccb));
}
