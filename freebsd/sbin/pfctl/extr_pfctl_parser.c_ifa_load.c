
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int* s6_addr; } ;
struct sockaddr_in6 {scalar_t__ sin6_scope_id; TYPE_6__ sin6_addr; } ;
struct TYPE_7__ {int* s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct TYPE_8__ {int mask; int addr; } ;
struct TYPE_9__ {TYPE_2__ a; } ;
struct TYPE_10__ {TYPE_3__ v; } ;
struct node_host {scalar_t__ af; int ifindex; struct node_host* tail; struct node_host* next; int * ifname; int peer; int bcast; TYPE_4__ addr; int ifa_flags; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifaddrs {int ifa_name; TYPE_5__* ifa_addr; int * ifa_dstaddr; int * ifa_broadaddr; scalar_t__ ifa_netmask; int ifa_flags; struct ifaddrs* ifa_next; } ;
struct TYPE_11__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_LINK ;
 scalar_t__ IN6_IS_ADDR_LINKLOCAL (TYPE_6__*) ;
 struct node_host* calloc (int,int) ;
 int err (int,char*) ;
 int freeifaddrs (struct ifaddrs*) ;
 scalar_t__ getifaddrs (struct ifaddrs**) ;
 int ifa_add_groups_to_map (int ) ;
 struct node_host* iftab ;
 int memcpy (int *,int**,int) ;
 int * strdup (int ) ;

void
ifa_load(void)
{
 struct ifaddrs *ifap, *ifa;
 struct node_host *n = ((void*)0), *h = ((void*)0);

 if (getifaddrs(&ifap) < 0)
  err(1, "getifaddrs");

 for (ifa = ifap; ifa; ifa = ifa->ifa_next) {
  if (!(ifa->ifa_addr->sa_family == AF_INET ||
      ifa->ifa_addr->sa_family == AF_INET6 ||
      ifa->ifa_addr->sa_family == AF_LINK))
    continue;
  n = calloc(1, sizeof(struct node_host));
  if (n == ((void*)0))
   err(1, "address: calloc");
  n->af = ifa->ifa_addr->sa_family;
  n->ifa_flags = ifa->ifa_flags;
  n->ifindex = 0;
  if (n->af == AF_INET) {
   memcpy(&n->addr.v.a.addr, &((struct sockaddr_in *)
       ifa->ifa_addr)->sin_addr.s_addr,
       sizeof(struct in_addr));
   memcpy(&n->addr.v.a.mask, &((struct sockaddr_in *)
       ifa->ifa_netmask)->sin_addr.s_addr,
       sizeof(struct in_addr));
   if (ifa->ifa_broadaddr != ((void*)0))
    memcpy(&n->bcast, &((struct sockaddr_in *)
        ifa->ifa_broadaddr)->sin_addr.s_addr,
        sizeof(struct in_addr));
   if (ifa->ifa_dstaddr != ((void*)0))
    memcpy(&n->peer, &((struct sockaddr_in *)
        ifa->ifa_dstaddr)->sin_addr.s_addr,
        sizeof(struct in_addr));
  } else if (n->af == AF_INET6) {
   memcpy(&n->addr.v.a.addr, &((struct sockaddr_in6 *)
       ifa->ifa_addr)->sin6_addr.s6_addr,
       sizeof(struct in6_addr));
   memcpy(&n->addr.v.a.mask, &((struct sockaddr_in6 *)
       ifa->ifa_netmask)->sin6_addr.s6_addr,
       sizeof(struct in6_addr));
   if (ifa->ifa_broadaddr != ((void*)0))
    memcpy(&n->bcast, &((struct sockaddr_in6 *)
        ifa->ifa_broadaddr)->sin6_addr.s6_addr,
        sizeof(struct in6_addr));
   if (ifa->ifa_dstaddr != ((void*)0))
     memcpy(&n->peer, &((struct sockaddr_in6 *)
        ifa->ifa_dstaddr)->sin6_addr.s6_addr,
        sizeof(struct in6_addr));
   n->ifindex = ((struct sockaddr_in6 *)
       ifa->ifa_addr)->sin6_scope_id;
  } else if (n->af == AF_LINK) {
   ifa_add_groups_to_map(ifa->ifa_name);
  }
  if ((n->ifname = strdup(ifa->ifa_name)) == ((void*)0))
   err(1, "ifa_load: strdup");
  n->next = ((void*)0);
  n->tail = n;
  if (h == ((void*)0))
   h = n;
  else {
   h->tail->next = n;
   h->tail = n;
  }
 }

 iftab = h;
 freeifaddrs(ifap);
}
