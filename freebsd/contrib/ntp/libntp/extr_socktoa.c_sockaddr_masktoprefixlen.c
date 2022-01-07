
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int sockaddr_u ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ isc_sockaddr_t ;
typedef scalar_t__ isc_result_t ;
typedef int isc_netaddr_t ;


 scalar_t__ ISC_R_SUCCESS ;
 int ZERO (TYPE_1__) ;
 int isc_netaddr_fromsockaddr (int *,TYPE_1__*) ;
 scalar_t__ isc_netaddr_masktoprefixlen (int *,scalar_t__*) ;
 int memcpy (int *,int const*,int ) ;
 int min (int,int) ;

int
sockaddr_masktoprefixlen(
 const sockaddr_u * psa
 )
{
 isc_netaddr_t isc_na;
 isc_sockaddr_t isc_sa;
 u_int pfxlen;
 isc_result_t result;
 int rc;

 ZERO(isc_sa);
 memcpy(&isc_sa.type, psa,
        min(sizeof(isc_sa.type), sizeof(*psa)));
 isc_netaddr_fromsockaddr(&isc_na, &isc_sa);
 result = isc_netaddr_masktoprefixlen(&isc_na, &pfxlen);
 rc = (ISC_R_SUCCESS == result)
   ? (int)pfxlen
   : -1;

 return rc;
}
