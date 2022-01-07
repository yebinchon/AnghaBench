
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct ifaddrs {char* ifa_name; struct ifaddrs* ifa_next; } ;
struct TYPE_6__ {struct ifaddrs* ifap; } ;
typedef TYPE_1__ ifconfig_handle_t ;
typedef int (* ifconfig_foreach_func_t ) (TYPE_1__*,struct ifaddrs*,void*) ;


 int freeifaddrs (struct ifaddrs*) ;
 int ifconfig_getifaddrs (TYPE_1__*) ;

int
ifconfig_foreach_iface(ifconfig_handle_t *h,
    ifconfig_foreach_func_t cb, void *udata)
{
 int ret;

 ret = ifconfig_getifaddrs(h);
 if (ret == 0) {
  struct ifaddrs *ifa;
  char *ifname = ((void*)0);

  for (ifa = h->ifap; ifa; ifa = ifa->ifa_next) {
   if (ifname != ifa->ifa_name) {
    ifname = ifa->ifa_name;
    cb(h, ifa, udata);
   }
  }
 }

 freeifaddrs(h->ifap);
 h->ifap = ((void*)0);

 return (ret);
}
