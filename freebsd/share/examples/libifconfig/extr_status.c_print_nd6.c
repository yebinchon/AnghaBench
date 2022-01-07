
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct in6_ndireq {TYPE_1__ ndi; } ;
struct ifaddrs {int ifa_name; } ;
typedef int ifconfig_handle_t ;


 int err (int,char*) ;
 scalar_t__ ifconfig_get_nd6 (int *,int ,struct in6_ndireq*) ;
 int printf (char*,int) ;

__attribute__((used)) static void
print_nd6(ifconfig_handle_t *lifh, struct ifaddrs *ifa)
{
 struct in6_ndireq nd;

 if (ifconfig_get_nd6(lifh, ifa->ifa_name, &nd) == 0) {
  printf("\tnd6 options=%x\n", nd.ndi.flags);
 } else {
  err(1, "Failed to get nd6 options");
 }
}
