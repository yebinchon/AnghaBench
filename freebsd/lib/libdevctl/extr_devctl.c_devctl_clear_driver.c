
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEVF_CLEAR_DRIVER_DETACH ;
 int DEV_CLEAR_DRIVER ;
 int devctl_simple_request (int ,char const*,int ) ;

int
devctl_clear_driver(const char *device, bool force)
{

 return (devctl_simple_request(DEV_CLEAR_DRIVER, device, force ?
     DEVF_CLEAR_DRIVER_DETACH : 0));
}
