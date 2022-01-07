
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zbuf ;
typedef int isc_result_t ;
struct TYPE_4__ {char* un; int in6; int in; } ;
struct TYPE_5__ {int family; int zone; TYPE_1__ type; } ;
typedef TYPE_2__ isc_netaddr_t ;
typedef int isc_buffer_t ;
typedef int abuf ;





 int INSIST (int) ;
 int ISC_R_FAILURE ;
 int ISC_R_NOSPACE ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 char* inet_ntop (int,void const*,char*,int) ;
 unsigned int isc_buffer_availablelength (int *) ;
 int isc_buffer_putmem (int *,unsigned char const*,int) ;
 int snprintf (char*,int,char*,int) ;
 unsigned int strlen (char*) ;

isc_result_t
isc_netaddr_totext(const isc_netaddr_t *netaddr, isc_buffer_t *target) {
 char abuf[sizeof("xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:255.255.255.255")];
 char zbuf[sizeof("%4294967295")];
 unsigned int alen;
 int zlen;
 const char *r;
 const void *type;

 REQUIRE(netaddr != ((void*)0));

 switch (netaddr->family) {
 case 130:
  type = &netaddr->type.in;
  break;
 case 129:
  type = &netaddr->type.in6;
  break;
 default:
  return (ISC_R_FAILURE);
 }
 r = inet_ntop(netaddr->family, type, abuf, sizeof(abuf));
 if (r == ((void*)0))
  return (ISC_R_FAILURE);

 alen = (unsigned int)strlen(abuf);
 INSIST(alen < sizeof(abuf));

 zlen = 0;
 if (netaddr->family == 129 && netaddr->zone != 0) {
  zlen = snprintf(zbuf, sizeof(zbuf), "%%%u", netaddr->zone);
  if (zlen < 0)
   return (ISC_R_FAILURE);
  INSIST((unsigned int)zlen < sizeof(zbuf));
 }

 if (alen + zlen > isc_buffer_availablelength(target))
  return (ISC_R_NOSPACE);

 isc_buffer_putmem(target, (unsigned char *)abuf, alen);
 isc_buffer_putmem(target, (unsigned char *)zbuf, zlen);

 return (ISC_R_SUCCESS);
}
