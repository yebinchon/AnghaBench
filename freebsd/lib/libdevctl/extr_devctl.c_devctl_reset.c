
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEVF_RESET_DETACH ;
 int DEV_RESET ;
 int devctl_simple_request (int ,char const*,int ) ;

int
devctl_reset(const char *device, bool detach)
{

 return (devctl_simple_request(DEV_RESET, device, detach ?
     DEVF_RESET_DETACH : 0));
}
