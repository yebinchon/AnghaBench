
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEV_THAW ;
 int devctl_simple_request (int ,char*,int ) ;

int
devctl_thaw(void)
{

 return (devctl_simple_request(DEV_THAW, "", 0));
}
