
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_uint32_t ;
struct TYPE_3__ {scalar_t__ family; int zone; } ;
typedef TYPE_1__ isc_netaddr_t ;


 scalar_t__ AF_INET6 ;
 int REQUIRE (int) ;

void
isc_netaddr_setzone(isc_netaddr_t *netaddr, isc_uint32_t zone) {

 REQUIRE(netaddr->family == AF_INET6);

 netaddr->zone = zone;
}
