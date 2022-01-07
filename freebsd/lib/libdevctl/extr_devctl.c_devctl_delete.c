
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEVF_FORCE_DELETE ;
 int DEV_DELETE ;
 int devctl_simple_request (int ,char const*,int ) ;

int
devctl_delete(const char *device, bool force)
{

 return (devctl_simple_request(DEV_DELETE, device, force ?
     DEVF_FORCE_DELETE : 0));
}
