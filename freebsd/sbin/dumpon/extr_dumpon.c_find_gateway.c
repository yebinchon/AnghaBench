
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct sockaddr_dl {int sdl_index; } ;
struct sockaddr {int dummy; } ;
struct rt_msghdr {scalar_t__ rtm_version; int rtm_flags; int rtm_index; int rtm_addrs; int rtm_msglen; } ;
struct ifaddrs {TYPE_1__* ifa_addr; int ifa_name; struct ifaddrs* ifa_next; } ;
struct TYPE_3__ {scalar_t__ sa_family; } ;


 int AF_INET ;
 scalar_t__ AF_LINK ;
 int CTL_NET ;
 scalar_t__ ENOMEM ;
 int EX_OSERR ;
 scalar_t__ INADDR_ANY ;
 int NET_RT_DUMP ;
 int PF_ROUTE ;


 int RTAX_MAX ;

 int RTF_GATEWAY ;
 scalar_t__ RTM_VERSION ;
 int SA_SIZE (struct sockaddr*) ;
 int err (int ,char*) ;
 scalar_t__ errno ;
 int errx (int,char*,char const*) ;
 int free (char*) ;
 int freeifaddrs (struct ifaddrs*) ;
 scalar_t__ getifaddrs (struct ifaddrs**) ;
 char* inet_ntoa (TYPE_2__) ;
 char* malloc (size_t) ;
 int nitems (int*) ;
 scalar_t__ strcmp (int ,char const*) ;
 int sysctl (int*,int ,char*,size_t*,int *,int ) ;

__attribute__((used)) static char *
find_gateway(const char *ifname)
{
 struct ifaddrs *ifa, *ifap;
 struct rt_msghdr *rtm;
 struct sockaddr *sa;
 struct sockaddr_dl *sdl;
 struct sockaddr_in *dst, *mask, *gw;
 char *buf, *next, *ret;
 size_t sz;
 int error, i, ifindex, mib[7];


 if (getifaddrs(&ifap) != 0)
  err(EX_OSERR, "getifaddrs");
 for (ifa = ifap; ifa != ((void*)0); ifa = ifa->ifa_next) {
  if (ifa->ifa_addr->sa_family != AF_LINK)
   continue;
  if (strcmp(ifa->ifa_name, ifname) == 0) {
   sdl = (struct sockaddr_dl *)(void *)ifa->ifa_addr;
   ifindex = sdl->sdl_index;
   break;
  }
 }
 if (ifa == ((void*)0))
  errx(1, "couldn't find interface index for '%s'", ifname);
 freeifaddrs(ifap);


 mib[0] = CTL_NET;
 mib[1] = PF_ROUTE;
 mib[2] = 0;
 mib[3] = AF_INET;
 mib[4] = NET_RT_DUMP;
 mib[5] = 0;
 mib[6] = -1;

 for (;;) {
  if (sysctl(mib, nitems(mib), ((void*)0), &sz, ((void*)0), 0) != 0)
   err(EX_OSERR, "sysctl(NET_RT_DUMP)");
  buf = malloc(sz);
  error = sysctl(mib, nitems(mib), buf, &sz, ((void*)0), 0);
  if (error == 0)
   break;
  if (errno != ENOMEM)
   err(EX_OSERR, "sysctl(NET_RT_DUMP)");
  free(buf);
 }

 ret = ((void*)0);
 for (next = buf; next < buf + sz; next += rtm->rtm_msglen) {
  rtm = (struct rt_msghdr *)(void *)next;
  if (rtm->rtm_version != RTM_VERSION)
   continue;
  if ((rtm->rtm_flags & RTF_GATEWAY) == 0 ||
      rtm->rtm_index != ifindex)
   continue;

  dst = gw = mask = ((void*)0);
  sa = (struct sockaddr *)(rtm + 1);
  for (i = 0; i < RTAX_MAX; i++) {
   if ((rtm->rtm_addrs & (1 << i)) != 0) {
    switch (i) {
    case 130:
     dst = (void *)sa;
     break;
    case 129:
     gw = (void *)sa;
     break;
    case 128:
     mask = (void *)sa;
     break;
    }
   }
   sa = (struct sockaddr *)((char *)sa + SA_SIZE(sa));
  }

  if (dst->sin_addr.s_addr == INADDR_ANY &&
      mask->sin_addr.s_addr == 0) {
   ret = inet_ntoa(gw->sin_addr);
   break;
  }
 }
 free(buf);
 return (ret);
}
