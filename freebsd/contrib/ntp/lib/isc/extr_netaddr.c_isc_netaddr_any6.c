
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int in6; } ;
struct TYPE_6__ {TYPE_1__ type; int family; } ;
typedef TYPE_2__ isc_netaddr_t ;


 int AF_INET6 ;
 int in6addr_any ;
 int memset (TYPE_2__*,int ,int) ;

void
isc_netaddr_any6(isc_netaddr_t *netaddr) {
 memset(netaddr, 0, sizeof(*netaddr));
 netaddr->family = AF_INET6;
 netaddr->type.in6 = in6addr_any;
}
