
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ifap; } ;
typedef TYPE_1__ ifconfig_handle_t ;


 int getifaddrs (int **) ;

int
ifconfig_getifaddrs(ifconfig_handle_t *h)
{
 int ret;

 if (h->ifap == ((void*)0)) {
  ret = getifaddrs(&h->ifap);
  return (ret);
 } else {
  return (0);
 }
}
