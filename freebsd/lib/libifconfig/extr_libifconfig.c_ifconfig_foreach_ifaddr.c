
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddrs {struct ifaddrs* ifa_next; int ifa_name; int * ifa_addr; } ;
typedef int ifconfig_handle_t ;
typedef int (* ifconfig_foreach_func_t ) (int *,struct ifaddrs*,void*) ;


 scalar_t__ strcmp (int ,int ) ;

void
ifconfig_foreach_ifaddr(ifconfig_handle_t *h, struct ifaddrs *ifa,
    ifconfig_foreach_func_t cb, void *udata)
{
 struct ifaddrs *ift;

 for (ift = ifa;
     ift != ((void*)0) &&
     ift->ifa_addr != ((void*)0) &&
     strcmp(ift->ifa_name, ifa->ifa_name) == 0;
     ift = ift->ifa_next) {
  cb(h, ift, udata);
 }
}
