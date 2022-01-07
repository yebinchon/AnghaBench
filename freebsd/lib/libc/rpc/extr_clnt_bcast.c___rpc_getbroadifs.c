
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_family; int sin6_len; int sin6_scope_id; int sin6_port; int sin6_addr; } ;
struct sockaddr_in {int sin_port; } ;
struct ifaddrs {int ifa_flags; TYPE_2__* ifa_broadaddr; int ifa_name; TYPE_1__* ifa_addr; struct ifaddrs* ifa_next; } ;
struct broadif {int index; int broadaddr; } ;
struct addrinfo {int ai_family; int ai_protocol; int ai_socktype; scalar_t__ ai_addr; } ;
typedef int broadlist_t ;
struct TYPE_4__ {scalar_t__ sa_len; } ;
struct TYPE_3__ {int sa_family; } ;


 int AF_INET6 ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_UP ;
 int RPCB_MULTICAST_ADDR ;
 int TAILQ_INSERT_TAIL (int *,struct broadif*,int ) ;
 int free (struct broadif*) ;
 int freeaddrinfo (struct addrinfo*) ;
 int freeifaddrs (struct ifaddrs*) ;
 scalar_t__ getaddrinfo (int *,char*,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ getifaddrs (struct ifaddrs**) ;
 int if_nametoindex (int ) ;
 int inet_pton (int,int ,int *) ;
 int link ;
 scalar_t__ malloc (int) ;
 int memcpy (int *,TYPE_2__*,size_t) ;
 int memset (struct addrinfo*,int ,int) ;

int
__rpc_getbroadifs(int af, int proto, int socktype, broadlist_t *list)
{
 int count = 0;
 struct broadif *bip;
 struct ifaddrs *ifap, *ifp;



 struct sockaddr_in *sin;
 struct addrinfo hints, *res;

 if (getifaddrs(&ifp) < 0)
  return 0;

 memset(&hints, 0, sizeof hints);

 hints.ai_family = af;
 hints.ai_protocol = proto;
 hints.ai_socktype = socktype;

 if (getaddrinfo(((void*)0), "sunrpc", &hints, &res) != 0) {
  freeifaddrs(ifp);
  return 0;
 }

 for (ifap = ifp; ifap != ((void*)0); ifap = ifap->ifa_next) {
  if (ifap->ifa_addr->sa_family != af ||
      !(ifap->ifa_flags & IFF_UP))
   continue;
  bip = (struct broadif *)malloc(sizeof *bip);
  if (bip == ((void*)0))
   break;
  bip->index = if_nametoindex(ifap->ifa_name);
  if (



  (ifap->ifa_flags & IFF_BROADCAST) &&
   ifap->ifa_broadaddr) {
   memcpy(&bip->broadaddr, ifap->ifa_broadaddr,
       (size_t)ifap->ifa_broadaddr->sa_len);
   sin = (struct sockaddr_in *)(void *)&bip->broadaddr;
   sin->sin_port =
       ((struct sockaddr_in *)
       (void *)res->ai_addr)->sin_port;
  } else
  {
   free(bip);
   continue;
  }
  TAILQ_INSERT_TAIL(list, bip, link);
  count++;
 }
 freeifaddrs(ifp);
 freeaddrinfo(res);

 return count;
}
