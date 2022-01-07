
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int pbuf ;
struct TYPE_14__ {char* sun_path; } ;
struct TYPE_13__ {int sin6_port; } ;
struct TYPE_12__ {int sin_port; } ;
struct TYPE_11__ {int sa_family; } ;
struct TYPE_15__ {TYPE_4__ sunix; TYPE_3__ sin6; TYPE_2__ sin; TYPE_1__ sa; } ;
struct TYPE_16__ {TYPE_5__ type; } ;
typedef TYPE_6__ isc_sockaddr_t ;
typedef scalar_t__ isc_result_t ;
struct TYPE_17__ {int length; char* base; } ;
typedef TYPE_7__ isc_region_t ;
typedef int isc_netaddr_t ;
typedef int isc_buffer_t ;





 int INSIST (int) ;
 scalar_t__ ISC_R_FAILURE ;
 scalar_t__ ISC_R_NOSPACE ;
 scalar_t__ ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int isc_buffer_availablelength (int *) ;
 int isc_buffer_availableregion (int *,TYPE_7__*) ;
 int isc_buffer_putmem (int *,unsigned char const*,unsigned int) ;
 int isc_netaddr_fromsockaddr (int *,TYPE_6__ const*) ;
 scalar_t__ isc_netaddr_totext (int *,int *) ;
 int ntohs (int ) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strlen (char*) ;

isc_result_t
isc_sockaddr_totext(const isc_sockaddr_t *sockaddr, isc_buffer_t *target) {
 isc_result_t result;
 isc_netaddr_t netaddr;
 char pbuf[sizeof("65000")];
 unsigned int plen;
 isc_region_t avail;

 REQUIRE(sockaddr != ((void*)0));






 switch (sockaddr->type.sa.sa_family) {
 case 130:
  snprintf(pbuf, sizeof(pbuf), "%u", ntohs(sockaddr->type.sin.sin_port));
  break;
 case 129:
  snprintf(pbuf, sizeof(pbuf), "%u", ntohs(sockaddr->type.sin6.sin6_port));
  break;
 default:
  return (ISC_R_FAILURE);
 }

 plen = (unsigned int)strlen(pbuf);
 INSIST(plen < sizeof(pbuf));

 isc_netaddr_fromsockaddr(&netaddr, sockaddr);
 result = isc_netaddr_totext(&netaddr, target);
 if (result != ISC_R_SUCCESS)
  return (result);

 if (1 + plen + 1 > isc_buffer_availablelength(target))
  return (ISC_R_NOSPACE);

 isc_buffer_putmem(target, (const unsigned char *)"#", 1);
 isc_buffer_putmem(target, (const unsigned char *)pbuf, plen);




 isc_buffer_availableregion(target, &avail);
 INSIST(avail.length >= 1);
 avail.base[0] = '\0';

 return (ISC_R_SUCCESS);
}
