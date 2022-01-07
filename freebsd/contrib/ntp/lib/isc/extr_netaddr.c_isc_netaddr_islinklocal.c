
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int in6; } ;
struct TYPE_5__ {int family; TYPE_1__ type; } ;
typedef TYPE_2__ isc_netaddr_t ;
typedef int isc_boolean_t ;




 int IN6_IS_ADDR_LINKLOCAL (int *) ;
 int ISC_FALSE ;
 int ISC_TF (int ) ;

isc_boolean_t
isc_netaddr_islinklocal(isc_netaddr_t *na) {
 switch (na->family) {
 case 129:
  return (ISC_FALSE);
 case 128:
  return (ISC_TF(IN6_IS_ADDR_LINKLOCAL(&na->type.in6)));
 default:
  return (ISC_FALSE);
 }
}
