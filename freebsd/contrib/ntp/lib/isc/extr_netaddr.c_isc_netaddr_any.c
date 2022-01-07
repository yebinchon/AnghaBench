
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int s_addr; } ;
struct TYPE_7__ {TYPE_1__ in; } ;
struct TYPE_8__ {TYPE_2__ type; int family; } ;
typedef TYPE_3__ isc_netaddr_t ;


 int AF_INET ;
 int INADDR_ANY ;
 int memset (TYPE_3__*,int ,int) ;

void
isc_netaddr_any(isc_netaddr_t *netaddr) {
 memset(netaddr, 0, sizeof(*netaddr));
 netaddr->family = AF_INET;
 netaddr->type.in.s_addr = INADDR_ANY;
}
