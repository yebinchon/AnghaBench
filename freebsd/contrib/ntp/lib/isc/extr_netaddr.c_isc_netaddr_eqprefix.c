
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int in6; int in; } ;
struct TYPE_6__ {int family; scalar_t__ zone; TYPE_1__ type; } ;
typedef TYPE_2__ isc_netaddr_t ;
typedef int isc_boolean_t ;




 int INSIST (int) ;
 int ISC_FALSE ;
 int ISC_TRUE ;
 int REQUIRE (int) ;
 scalar_t__ memcmp (unsigned char const*,unsigned char const*,unsigned int) ;

isc_boolean_t
isc_netaddr_eqprefix(const isc_netaddr_t *a, const isc_netaddr_t *b,
       unsigned int prefixlen)
{
 const unsigned char *pa = ((void*)0), *pb = ((void*)0);
 unsigned int ipabytes = 0;
 unsigned int nbytes;
 unsigned int nbits;

 REQUIRE(a != ((void*)0) && b != ((void*)0));

 if (a->family != b->family)
  return (ISC_FALSE);

 if (a->zone != b->zone && b->zone != 0)
  return (ISC_FALSE);

 switch (a->family) {
 case 129:
  pa = (const unsigned char *) &a->type.in;
  pb = (const unsigned char *) &b->type.in;
  ipabytes = 4;
  break;
 case 128:
  pa = (const unsigned char *) &a->type.in6;
  pb = (const unsigned char *) &b->type.in6;
  ipabytes = 16;
  break;
 default:
  return (ISC_FALSE);
 }




 if (prefixlen > ipabytes * 8)
  prefixlen = ipabytes * 8;

 nbytes = prefixlen / 8;
 nbits = prefixlen % 8;

 if (nbytes > 0) {
  if (memcmp(pa, pb, nbytes) != 0)
   return (ISC_FALSE);
 }
 if (nbits > 0) {
  unsigned int bytea, byteb, mask;
  INSIST(nbytes < ipabytes);
  INSIST(nbits < 8);
  bytea = pa[nbytes];
  byteb = pb[nbytes];
  mask = (0xFF << (8-nbits)) & 0xFF;
  if ((bytea & mask) != (byteb & mask))
   return (ISC_FALSE);
 }
 return (ISC_TRUE);
}
