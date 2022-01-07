
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_device {int dummy; } ;


 struct cam_device* cam_lookup_pass (char const*,int,int,int *,struct cam_device*) ;

struct cam_device *
cam_open_spec_device(const char *dev_name, int unit, int flags,
       struct cam_device *device)
{
 return(cam_lookup_pass(dev_name, unit, flags, ((void*)0), device));
}
