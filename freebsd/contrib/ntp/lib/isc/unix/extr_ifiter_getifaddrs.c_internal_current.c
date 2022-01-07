
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct ifaddrs {int ifa_flags; int * ifa_name; TYPE_7__* ifa_broadaddr; TYPE_7__* ifa_dstaddr; TYPE_7__* ifa_netmask; TYPE_7__* ifa_addr; } ;
typedef int isc_result_t ;
struct TYPE_10__ {int flags; int af; struct TYPE_10__* name; int ifindex; int broadcast; int dstaddress; int netmask; int address; } ;
struct TYPE_9__ {TYPE_2__ current; struct ifaddrs* pos; } ;
typedef TYPE_1__ isc_interfaceiter_t ;
struct TYPE_11__ {int sa_family; } ;


 int AF_INET ;
 int AF_INET6 ;
 int IFF_BROADCAST ;
 int IFF_LOOPBACK ;
 int IFF_MULTICAST ;
 int IFF_POINTOPOINT ;
 int IFF_RUNNING ;
 int IFF_UP ;
 int INSIST (int ) ;
 int INTERFACE_F_BROADCAST ;
 int INTERFACE_F_LOOPBACK ;
 int INTERFACE_F_MULTICAST ;
 int INTERFACE_F_POINTTOPOINT ;
 int INTERFACE_F_UP ;
 int ISC_R_IGNORE ;
 int ISC_R_SUCCESS ;
 int ISC_TRUE ;
 int REQUIRE (int ) ;
 int VALID_IFITER (TYPE_1__*) ;
 int get_addr (int,int *,TYPE_7__*,int *) ;
 int if_nametoindex (TYPE_2__*) ;
 int linux_if_inet6_current (TYPE_1__*) ;
 int memcpy (TYPE_2__*,int *,unsigned int) ;
 int memset (TYPE_2__*,int ,int) ;
 int seenv6 ;
 unsigned int strlen (int *) ;

__attribute__((used)) static isc_result_t
internal_current(isc_interfaceiter_t *iter) {
 struct ifaddrs *ifa;
 int family;
 unsigned int namelen;

 REQUIRE(VALID_IFITER(iter));

 ifa = iter->pos;
 if (iter->pos == ((void*)0))
  return (linux_if_inet6_current(iter));


 INSIST(ifa != ((void*)0));
 INSIST(ifa->ifa_name != ((void*)0));
 if (ifa->ifa_addr == ((void*)0))
  return (ISC_R_IGNORE);

 family = ifa->ifa_addr->sa_family;
 if (family != AF_INET && family != AF_INET6)
  return (ISC_R_IGNORE);


 if (family == AF_INET6)
  seenv6 = ISC_TRUE;


 memset(&iter->current, 0, sizeof(iter->current));

 namelen = strlen(ifa->ifa_name);
 if (namelen > sizeof(iter->current.name) - 1)
  namelen = sizeof(iter->current.name) - 1;

 memset(iter->current.name, 0, sizeof(iter->current.name));
 memcpy(iter->current.name, ifa->ifa_name, namelen);

 iter->current.flags = 0;

 if ((ifa->ifa_flags & IFF_UP) != 0)
  iter->current.flags |= INTERFACE_F_UP;

 if ((ifa->ifa_flags & IFF_POINTOPOINT) != 0)
  iter->current.flags |= INTERFACE_F_POINTTOPOINT;

 if ((ifa->ifa_flags & IFF_LOOPBACK) != 0)
  iter->current.flags |= INTERFACE_F_LOOPBACK;

 if ((ifa->ifa_flags & IFF_BROADCAST) != 0)
  iter->current.flags |= INTERFACE_F_BROADCAST;






 iter->current.af = family;

 get_addr(family, &iter->current.address, ifa->ifa_addr, ifa->ifa_name);

 if (ifa->ifa_netmask != ((void*)0))
  get_addr(family, &iter->current.netmask, ifa->ifa_netmask,
    ifa->ifa_name);

 if (ifa->ifa_dstaddr != ((void*)0) &&
     (iter->current.flags & INTERFACE_F_POINTTOPOINT) != 0)
  get_addr(family, &iter->current.dstaddress, ifa->ifa_dstaddr,
    ifa->ifa_name);

 if (ifa->ifa_broadaddr != ((void*)0) &&
     (iter->current.flags & INTERFACE_F_BROADCAST) != 0)
  get_addr(family, &iter->current.broadcast, ifa->ifa_broadaddr,
    ifa->ifa_name);




 return (ISC_R_SUCCESS);
}
