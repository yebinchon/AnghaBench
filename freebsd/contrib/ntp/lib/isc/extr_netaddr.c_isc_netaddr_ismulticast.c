
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int s_addr; } ;
struct TYPE_6__ {int in6; TYPE_1__ in; } ;
struct TYPE_7__ {int family; TYPE_2__ type; } ;
typedef TYPE_3__ isc_netaddr_t ;
typedef int isc_boolean_t ;




 int IN6_IS_ADDR_MULTICAST (int *) ;
 int ISC_FALSE ;
 int ISC_IPADDR_ISMULTICAST (int ) ;
 int ISC_TF (int ) ;

isc_boolean_t
isc_netaddr_ismulticast(isc_netaddr_t *na) {
 switch (na->family) {
 case 129:
  return (ISC_TF(ISC_IPADDR_ISMULTICAST(na->type.in.s_addr)));
 case 128:
  return (ISC_TF(IN6_IS_ADDR_MULTICAST(&na->type.in6)));
 default:
  return (ISC_FALSE);
 }
}
