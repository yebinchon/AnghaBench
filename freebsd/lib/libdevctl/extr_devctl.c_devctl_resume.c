
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEV_RESUME ;
 int devctl_simple_request (int ,char const*,int ) ;

int
devctl_resume(const char *device)
{

 return (devctl_simple_request(DEV_RESUME, device, 0));
}
