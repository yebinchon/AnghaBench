
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_4__ {int in6; int in; } ;
struct TYPE_5__ {int family; TYPE_1__ type; } ;
typedef TYPE_2__ isc_netaddr_t ;




 int ISC_R_FAILURE ;
 int ISC_R_NOTIMPLEMENTED ;
 int ISC_R_RANGE ;
 int ISC_R_SUCCESS ;
 scalar_t__ memcmp (unsigned char const*,unsigned char const*,unsigned int) ;

isc_result_t
isc_netaddr_prefixok(const isc_netaddr_t *na, unsigned int prefixlen) {
 static const unsigned char zeros[16] = { 0 };
 unsigned int nbits, nbytes, ipbytes = 0;
 const unsigned char *p;

 switch (na->family) {
 case 129:
  p = (const unsigned char *) &na->type.in;
  ipbytes = 4;
  if (prefixlen > 32)
   return (ISC_R_RANGE);
  break;
 case 128:
  p = (const unsigned char *) &na->type.in6;
  ipbytes = 16;
  if (prefixlen > 128)
   return (ISC_R_RANGE);
  break;
 default:
  return (ISC_R_NOTIMPLEMENTED);
 }
 nbytes = prefixlen / 8;
 nbits = prefixlen % 8;
 if (nbits != 0) {
  if ((p[nbytes] & (0xff>>nbits)) != 0U)
   return (ISC_R_FAILURE);
  nbytes++;
 }
 if (memcmp(p + nbytes, zeros, ipbytes - nbytes) != 0)
  return (ISC_R_FAILURE);
 return (ISC_R_SUCCESS);
}
