
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEV_FREEZE ;
 int devctl_simple_request (int ,char*,int ) ;

int
devctl_freeze(void)
{

 return (devctl_simple_request(DEV_FREEZE, "", 0));
}
