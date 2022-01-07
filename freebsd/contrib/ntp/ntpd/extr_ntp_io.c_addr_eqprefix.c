
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
typedef int sockaddr_u ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ isc_sockaddr_t ;
typedef int isc_netaddr_t ;


 int ZERO (TYPE_1__) ;
 scalar_t__ isc_netaddr_eqprefix (int *,int *,int ) ;
 int isc_netaddr_fromsockaddr (int *,TYPE_1__*) ;
 int memcpy (int *,int const*,int ) ;
 int min (int,int) ;

__attribute__((used)) static int
addr_eqprefix(
 const sockaddr_u * a,
 const sockaddr_u * b,
 int prefixlen
 )
{
 isc_netaddr_t isc_a;
 isc_netaddr_t isc_b;
 isc_sockaddr_t isc_sa;

 ZERO(isc_sa);
 memcpy(&isc_sa.type, a, min(sizeof(isc_sa.type), sizeof(*a)));
 isc_netaddr_fromsockaddr(&isc_a, &isc_sa);

 ZERO(isc_sa);
 memcpy(&isc_sa.type, b, min(sizeof(isc_sa.type), sizeof(*b)));
 isc_netaddr_fromsockaddr(&isc_b, &isc_sa);

 return (int)isc_netaddr_eqprefix(&isc_a, &isc_b,
      (u_int)prefixlen);
}
