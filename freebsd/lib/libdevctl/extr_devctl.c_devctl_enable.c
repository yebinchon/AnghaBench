
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEV_ENABLE ;
 int devctl_simple_request (int ,char const*,int ) ;

int
devctl_enable(const char *device)
{

 return (devctl_simple_request(DEV_ENABLE, device, 0));
}
