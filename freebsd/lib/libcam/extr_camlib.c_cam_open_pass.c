
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_device {int dummy; } ;


 struct cam_device* cam_real_open_device (char const*,int,struct cam_device*,char const*,int *,int ) ;

struct cam_device *
cam_open_pass(const char *path, int flags, struct cam_device *device)
{
 return(cam_real_open_device(path, flags, device, path, ((void*)0), 0));
}
