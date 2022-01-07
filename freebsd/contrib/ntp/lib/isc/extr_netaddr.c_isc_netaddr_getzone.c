
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_uint32_t ;
struct TYPE_3__ {int zone; } ;
typedef TYPE_1__ isc_netaddr_t ;



isc_uint32_t
isc_netaddr_getzone(const isc_netaddr_t *netaddr) {
 return (netaddr->zone);
}
