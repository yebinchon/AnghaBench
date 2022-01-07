
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEVF_FORCE_DETACH ;
 int DEV_DISABLE ;
 int devctl_simple_request (int ,char const*,int ) ;

int
devctl_disable(const char *device, bool force_detach)
{

 return (devctl_simple_request(DEV_DISABLE, device, force_detach ?
     DEVF_FORCE_DETACH : 0));
}
