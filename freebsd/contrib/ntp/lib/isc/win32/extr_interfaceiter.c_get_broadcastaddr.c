
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_uint32_t ;
struct TYPE_6__ {int in; } ;
struct TYPE_7__ {TYPE_1__ type; } ;
typedef TYPE_2__ isc_netaddr_t ;



__attribute__((used)) static void
get_broadcastaddr(isc_netaddr_t *bcastaddr, isc_netaddr_t *addr, isc_netaddr_t *netmask) {

 isc_uint32_t * b;
 isc_uint32_t a, n;

 b = (isc_uint32_t *)&bcastaddr->type.in;
 a = *(isc_uint32_t *)&addr->type.in;
 n = *(isc_uint32_t *)&netmask->type.in;

 *b = a | ~n;
}
