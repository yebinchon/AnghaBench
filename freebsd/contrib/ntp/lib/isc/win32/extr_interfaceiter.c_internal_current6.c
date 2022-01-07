
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
typedef int isc_sockaddr_t ;
typedef int isc_result_t ;
struct TYPE_15__ {TYPE_8__* s6_addr; } ;
struct TYPE_16__ {TYPE_4__ in6; } ;
struct TYPE_17__ {void* family; TYPE_5__ type; } ;
struct TYPE_13__ {int in6; } ;
struct TYPE_20__ {TYPE_2__ type; void* family; } ;
struct TYPE_19__ {int flags; TYPE_6__ netmask; int name; TYPE_9__ address; void* af; } ;
struct TYPE_18__ {unsigned int pos6; TYPE_8__ current; TYPE_3__* buf6; int loopfe80__1; int loop__1; } ;
typedef TYPE_7__ isc_interfaceiter_t ;
struct TYPE_14__ {int iAddressCount; TYPE_1__* Address; } ;
struct TYPE_12__ {scalar_t__ lpSockaddr; } ;
typedef scalar_t__ BOOL ;


 void* AF_INET6 ;
 scalar_t__ FALSE ;
 int INTERFACE_F_LOOPBACK ;
 int INTERFACE_F_MULTICAST ;
 int INTERFACE_F_UP ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 scalar_t__ TRUE ;
 int VALID_IFITER (TYPE_7__*) ;
 int isc_netaddr_fromsockaddr (TYPE_9__*,int *) ;
 int memcmp (int *,int *,int) ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_8__*,int,int) ;
 int snprintf (int ,int,char*,size_t) ;

__attribute__((used)) static isc_result_t
internal_current6(isc_interfaceiter_t *iter) {
 BOOL ifNamed = FALSE;
 struct sockaddr_in6 *psa6;
 BOOL localhostSeen;
 int i;

 REQUIRE(VALID_IFITER(iter));
 REQUIRE(iter->pos6 >= 0);
 REQUIRE(iter->buf6 != 0);

 memset(&iter->current, 0, sizeof(iter->current));
 iter->current.af = AF_INET6;





 if (iter->pos6 >= (unsigned)iter->buf6->iAddressCount) {
  localhostSeen = FALSE;
  for (i = 0; i < iter->buf6->iAddressCount; i++) {
   psa6 = (struct sockaddr_in6 *)
          iter->buf6->Address[i].lpSockaddr;
   if (!memcmp(&iter->loop__1, &psa6->sin6_addr,
        sizeof(iter->loop__1))) {
    localhostSeen = TRUE;
    break;
   }
  }
  if (localhostSeen)
   iter->pos6 = iter->buf6->iAddressCount - 1;
 }

 if (iter->pos6 < (unsigned)iter->buf6->iAddressCount) {
  isc_netaddr_fromsockaddr(&iter->current.address,
      (isc_sockaddr_t *)iter->buf6->Address[iter->pos6].lpSockaddr);
 } else {
  iter->current.address.family = AF_INET6;
  memcpy(&iter->current.address.type.in6, &iter->loop__1,
         sizeof(iter->current.address.type.in6));
 }





 iter->current.flags = INTERFACE_F_UP | INTERFACE_F_MULTICAST;

 if (!memcmp(&iter->current.address.type.in6, &iter->loop__1,
      sizeof(iter->current.address.type.in6)) ||
     !memcmp(&iter->current.address.type.in6, &iter->loopfe80__1,
             sizeof(iter->current.address.type.in6))) {

  iter->current.flags |= INTERFACE_F_LOOPBACK;
  snprintf(iter->current.name, sizeof(iter->current.name),
    "v6loop %d",
    iter->buf6->iAddressCount - iter->pos6);
  ifNamed = TRUE;
 }

 if (ifNamed == FALSE)
  snprintf(iter->current.name, sizeof(iter->current.name),
    "IPv6 %d",
    iter->buf6->iAddressCount - iter->pos6);

 memset(iter->current.netmask.type.in6.s6_addr, 0xff,
        sizeof(iter->current.netmask.type.in6.s6_addr));
 iter->current.netmask.family = AF_INET6;
 return (ISC_R_SUCCESS);
}
