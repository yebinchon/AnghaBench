
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_sockaddr_t ;
typedef int isc_result_t ;
struct TYPE_8__ {int flags; int name; int netmask; int address; int broadcast; int dstaddress; int af; } ;
struct TYPE_6__ {unsigned long iiFlags; int iiNetmask; int iiBroadcastAddress; int iiAddress; } ;
struct TYPE_7__ {scalar_t__ numIF; TYPE_3__ current; TYPE_1__ IFData; } ;
typedef TYPE_2__ isc_interfaceiter_t ;
typedef scalar_t__ BOOL ;


 int AF_INET ;
 scalar_t__ FALSE ;
 unsigned long IFF_BROADCAST ;
 unsigned long IFF_LOOPBACK ;
 unsigned long IFF_MULTICAST ;
 unsigned long IFF_POINTTOPOINT ;
 unsigned long IFF_UP ;
 int INTERFACE_F_BROADCAST ;
 int INTERFACE_F_LOOPBACK ;
 int INTERFACE_F_MULTICAST ;
 int INTERFACE_F_POINTTOPOINT ;
 int INTERFACE_F_UP ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 scalar_t__ TRUE ;
 int VALID_IFITER (TYPE_2__*) ;
 int get_broadcastaddr (int *,int *,int *) ;
 int isc_netaddr_fromsockaddr (int *,int *) ;
 int memset (TYPE_3__*,int ,int) ;
 int snprintf (int ,int,char*,scalar_t__) ;

__attribute__((used)) static isc_result_t
internal_current(isc_interfaceiter_t *iter) {
 BOOL ifNamed = FALSE;
 unsigned long flags;

 REQUIRE(VALID_IFITER(iter));
 REQUIRE(iter->numIF >= 0);

 memset(&iter->current, 0, sizeof(iter->current));
 iter->current.af = AF_INET;

 isc_netaddr_fromsockaddr(&iter->current.address,
     (isc_sockaddr_t *)&(iter->IFData.iiAddress));





 iter->current.flags = 0;
 flags = iter->IFData.iiFlags;

 if ((flags & IFF_UP) != 0)
  iter->current.flags |= INTERFACE_F_UP;

 if ((flags & IFF_BROADCAST) != 0)
  iter->current.flags |= INTERFACE_F_BROADCAST;

 if ((flags & IFF_MULTICAST) != 0)
  iter->current.flags |= INTERFACE_F_MULTICAST;

 if ((flags & IFF_POINTTOPOINT) != 0) {
  iter->current.flags |= INTERFACE_F_POINTTOPOINT;
  snprintf(iter->current.name, sizeof(iter->current.name),
    "PPP %d", iter->numIF);
  ifNamed = TRUE;
 }

 if ((flags & IFF_LOOPBACK) != 0) {
  iter->current.flags |= INTERFACE_F_LOOPBACK;
  snprintf(iter->current.name, sizeof(iter->current.name),
   "v4loop %d", iter->numIF);
  ifNamed = TRUE;
 }




 if ((iter->current.flags & INTERFACE_F_POINTTOPOINT) != 0)
  isc_netaddr_fromsockaddr(&iter->current.dstaddress,
      (isc_sockaddr_t *)&(iter->IFData.iiBroadcastAddress));




 isc_netaddr_fromsockaddr(&iter->current.netmask,
     (isc_sockaddr_t *)&(iter->IFData.iiNetmask));





 if ((iter->current.flags & INTERFACE_F_BROADCAST) != 0)
  get_broadcastaddr(&iter->current.broadcast,
      &iter->current.address,
      &iter->current.netmask);

 if (ifNamed == FALSE)
  snprintf(iter->current.name, sizeof(iter->current.name),
   "IPv4 %d", iter->numIF);

 return (ISC_R_SUCCESS);
}
