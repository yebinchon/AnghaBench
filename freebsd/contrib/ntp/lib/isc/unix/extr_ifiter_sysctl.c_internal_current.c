
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sockaddr_dl {unsigned int sdl_nlen; int sdl_data; int sdl_index; } ;
struct sockaddr {int sa_family; int sa_len; } ;
struct ifa_msghdr {scalar_t__ ifam_version; scalar_t__ ifam_type; int ifam_flags; int ifam_addrs; } ;
struct if_msghdr {int dummy; } ;
typedef scalar_t__ sa ;
typedef int isc_result_t ;
struct TYPE_8__ {int flags; int af; struct TYPE_8__* name; int broadcast; int dstaddress; int netmask; int address; int ifindex; } ;
struct TYPE_7__ {unsigned int pos; int bufused; TYPE_2__ current; scalar_t__ buf; } ;
typedef TYPE_1__ isc_interfaceiter_t ;


 int AF_INET ;
 int AF_INET6 ;
 int IFF_BROADCAST ;
 int IFF_LOOPBACK ;
 int IFF_MULTICAST ;
 int IFF_POINTOPOINT ;
 int IFF_UP ;
 int INSIST (int) ;
 int INTERFACE_F_BROADCAST ;
 int INTERFACE_F_LOOPBACK ;
 int INTERFACE_F_MULTICAST ;
 int INTERFACE_F_POINTTOPOINT ;
 int INTERFACE_F_UP ;
 int ISC_MSGSET_IFITERSYSCTL ;
 int ISC_MSG_UNEXPECTEDTYPE ;
 int ISC_R_IGNORE ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 scalar_t__ ROUNDUP (int) ;


 int RTAX_MAX ;

 scalar_t__ RTM_IFINFO ;
 scalar_t__ RTM_NEWADDR ;
 scalar_t__ RTM_VERSION ;
 int VALID_IFITER (TYPE_1__*) ;
 int _FAKE_SA_LEN_DST (struct sockaddr*) ;
 int get_addr (int,int *,struct sockaddr*,TYPE_2__*) ;
 int isc_msgcat ;
 char* isc_msgcat_get (int ,int ,int ,char*) ;
 int memcpy (TYPE_2__*,int ,unsigned int) ;
 int memset (TYPE_2__*,int ,int) ;
 int printf (char*,char*) ;

__attribute__((used)) static isc_result_t
internal_current(isc_interfaceiter_t *iter) {
 struct ifa_msghdr *ifam, *ifam_end;

 REQUIRE(VALID_IFITER(iter));
 REQUIRE (iter->pos < (unsigned int) iter->bufused);

 ifam = (struct ifa_msghdr *) ((char *) iter->buf + iter->pos);
 ifam_end = (struct ifa_msghdr *) ((char *) iter->buf + iter->bufused);


 if (ifam->ifam_version != RTM_VERSION)
  return (ISC_R_IGNORE);

 if (ifam->ifam_type == RTM_IFINFO) {
  struct if_msghdr *ifm = (struct if_msghdr *) ifam;
  struct sockaddr_dl *sdl = (struct sockaddr_dl *) (ifm + 1);
  unsigned int namelen;

  memset(&iter->current, 0, sizeof(iter->current));

  iter->current.ifindex = sdl->sdl_index;
  namelen = sdl->sdl_nlen;
  if (namelen > sizeof(iter->current.name) - 1)
   namelen = sizeof(iter->current.name) - 1;

  memset(iter->current.name, 0, sizeof(iter->current.name));
  memcpy(iter->current.name, sdl->sdl_data, namelen);

  iter->current.flags = 0;

  if ((ifam->ifam_flags & IFF_UP) != 0)
   iter->current.flags |= INTERFACE_F_UP;

  if ((ifam->ifam_flags & IFF_POINTOPOINT) != 0)
   iter->current.flags |= INTERFACE_F_POINTTOPOINT;

  if ((ifam->ifam_flags & IFF_LOOPBACK) != 0)
   iter->current.flags |= INTERFACE_F_LOOPBACK;

  if ((ifam->ifam_flags & IFF_BROADCAST) != 0)
   iter->current.flags |= INTERFACE_F_BROADCAST;
  return (ISC_R_IGNORE);
 } else if (ifam->ifam_type == RTM_NEWADDR) {
  int i;
  int family;
  struct sockaddr *mask_sa = ((void*)0);
  struct sockaddr *addr_sa = ((void*)0);
  struct sockaddr *dst_sa = ((void*)0);

  struct sockaddr *sa = (struct sockaddr *)(ifam + 1);
  family = sa->sa_family;

  for (i = 0; i < RTAX_MAX; i++)
  {
   if ((ifam->ifam_addrs & (1 << i)) == 0)
    continue;

   INSIST(sa < (struct sockaddr *) ifam_end);

   switch (i) {
   case 128:
    mask_sa = sa;
    break;
   case 129:
    addr_sa = sa;
    break;
   case 130:
    dst_sa = sa;
    break;
   }
   sa = (struct sockaddr *)((char*)(sa)
      + ROUNDUP(sizeof(struct sockaddr)));


  }

  if (addr_sa == ((void*)0))
   return (ISC_R_IGNORE);

  family = addr_sa->sa_family;
  if (family != AF_INET && family != AF_INET6)
   return (ISC_R_IGNORE);

  iter->current.af = family;

  get_addr(family, &iter->current.address, addr_sa,
    iter->current.name);

  if (mask_sa != ((void*)0))
   get_addr(family, &iter->current.netmask, mask_sa,
     iter->current.name);

  if (dst_sa != ((void*)0) &&
      (iter->current.flags & INTERFACE_F_POINTTOPOINT) != 0)
   get_addr(family, &iter->current.dstaddress, dst_sa,
     iter->current.name);

  if (dst_sa != ((void*)0) &&
      (iter->current.flags & INTERFACE_F_BROADCAST) != 0)
   get_addr(family, &iter->current.broadcast, dst_sa,
     iter->current.name);

  return (ISC_R_SUCCESS);
 } else {
  printf("%s", isc_msgcat_get(isc_msgcat,
         ISC_MSGSET_IFITERSYSCTL,
         ISC_MSG_UNEXPECTEDTYPE,
         "warning: unexpected interface "
         "list message type\n"));
  return (ISC_R_IGNORE);
 }
}
