
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sa_family; } ;
struct TYPE_7__ {TYPE_1__ sa; } ;
struct TYPE_8__ {TYPE_2__ type; } ;
typedef TYPE_3__ isc_sockaddr_t ;
typedef int isc_netaddr_t ;
typedef int isc_boolean_t ;


 scalar_t__ AF_INET6 ;
 int ISC_FALSE ;
 int isc_netaddr_fromsockaddr (int *,TYPE_3__ const*) ;
 int isc_netaddr_islinklocal (int *) ;

isc_boolean_t
isc_sockaddr_islinklocal(const isc_sockaddr_t *sockaddr) {
 isc_netaddr_t netaddr;

 if (sockaddr->type.sa.sa_family == AF_INET6) {
  isc_netaddr_fromsockaddr(&netaddr, sockaddr);
  return (isc_netaddr_islinklocal(&netaddr));
 }
 return (ISC_FALSE);
}
