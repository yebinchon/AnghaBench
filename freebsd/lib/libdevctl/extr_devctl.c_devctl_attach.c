
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEV_ATTACH ;
 int devctl_simple_request (int ,char const*,int ) ;

int
devctl_attach(const char *device)
{

 return (devctl_simple_request(DEV_ATTACH, device, 0));
}
