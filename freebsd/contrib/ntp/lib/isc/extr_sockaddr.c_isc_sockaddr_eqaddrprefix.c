
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_sockaddr_t ;
typedef int isc_netaddr_t ;
typedef int isc_boolean_t ;


 int isc_netaddr_eqprefix (int *,int *,unsigned int) ;
 int isc_netaddr_fromsockaddr (int *,int const*) ;

isc_boolean_t
isc_sockaddr_eqaddrprefix(const isc_sockaddr_t *a, const isc_sockaddr_t *b,
     unsigned int prefixlen)
{
 isc_netaddr_t na, nb;
 isc_netaddr_fromsockaddr(&na, a);
 isc_netaddr_fromsockaddr(&nb, b);
 return (isc_netaddr_eqprefix(&na, &nb, prefixlen));
}
