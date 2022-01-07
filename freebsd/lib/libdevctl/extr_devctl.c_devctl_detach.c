
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEVF_FORCE_DETACH ;
 int DEV_DETACH ;
 int devctl_simple_request (int ,char const*,int ) ;

int
devctl_detach(const char *device, bool force)
{

 return (devctl_simple_request(DEV_DETACH, device, force ?
     DEVF_FORCE_DETACH : 0));
}
