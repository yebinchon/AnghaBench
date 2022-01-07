
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_device {int dummy; } ;
typedef int dev_name ;


 int DEV_IDLEN ;
 int cam_get_device (char const*,char*,int,int*) ;
 struct cam_device* cam_lookup_pass (char*,int,int,char const*,int *) ;

struct cam_device *
cam_open_device(const char *path, int flags)
{
 int unit;
 char dev_name[DEV_IDLEN + 1];





 if (cam_get_device(path, dev_name, sizeof(dev_name), &unit) == -1)
  return(((void*)0));

 return(cam_lookup_pass(dev_name, unit, flags, path, ((void*)0)));
}
