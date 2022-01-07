
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int dummy; } ;
struct TYPE_5__ {int s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; int sin_family; } ;
struct sockaddr_dl {int sa_family; int sa_len; int sdl_len; } ;
struct sockaddr {int sa_family; int sa_len; int sdl_len; } ;
struct netent {int n_net; } ;
struct ifaddrs {char* ifa_name; TYPE_1__* ifa_addr; struct ifaddrs* ifa_next; } ;
struct hostent {scalar_t__ h_length; int h_addr; int h_addrtype; } ;
struct addrinfo {int ai_family; int ai_addrlen; struct sockaddr_dl* ai_addr; int ai_socktype; } ;
typedef int hints ;
struct TYPE_4__ {int sa_family; } ;





 int EX_DATAERR ;
 int EX_NOHOST ;
 int EX_OSERR ;
 int F_FORCEHOST ;
 int F_FORCENET ;
 int F_INTERFACE ;
 scalar_t__ INADDR_ANY ;
 int INADDR_NONE ;
 int MIN (size_t,int) ;




 int RTAX_MAX ;
 size_t RTAX_NETMASK ;
 int SOCK_DGRAM ;
 scalar_t__ af ;
 int aflen ;
 int err (int ,char*) ;
 int errx (int ,char*,char*,...) ;
 int freeaddrinfo (struct addrinfo*) ;
 int freeifaddrs (struct ifaddrs*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 struct hostent* gethostbyname (char*) ;
 int getifaddrs (struct ifaddrs**) ;
 struct netent* getnetbyname (char*) ;
 int inet6_makenetandmask (struct sockaddr_in6*,char*) ;
 scalar_t__ inet_aton (char*,TYPE_2__*) ;
 scalar_t__ inet_lnaof (TYPE_2__) ;
 int inet_makenetandmask (int ,struct sockaddr_in*,struct sockaddr_in*,int ) ;
 int inet_network (char*) ;
 int link_addr (char*,struct sockaddr_dl*) ;
 int memcpy (struct sockaddr_dl*,struct sockaddr_dl*,int) ;
 int memmove (char*,int ,int ) ;
 int memset (struct addrinfo*,int ,int) ;
 int ntohl (int ) ;
 int rtm_addrs ;
 int * so ;
 int sockaddr (char*,struct sockaddr_dl*,int) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strtoul (char*,int ,int ) ;
 int usage (char*) ;

__attribute__((used)) static int
getaddr(int idx, char *str, struct hostent **hpp, int nrflags)
{
 struct sockaddr *sa;
 if (idx < 0 || idx >= RTAX_MAX)
  usage("internal error");
 if (af == 0) {







  af = 132;
  aflen = sizeof(struct sockaddr_dl);

 }

 hpp = ((void*)0);

 rtm_addrs |= (1 << idx);
 sa = (struct sockaddr *)&so[idx];
 sa->sa_family = af;
 sa->sa_len = aflen;

 switch (idx) {
 case 129:
  if (nrflags & F_INTERFACE) {
   struct ifaddrs *ifap, *ifa;
   struct sockaddr_dl *sdl0 = (struct sockaddr_dl *)(void *)sa;
   struct sockaddr_dl *sdl = ((void*)0);

   if (getifaddrs(&ifap))
    err(EX_OSERR, "getifaddrs");

   for (ifa = ifap; ifa != ((void*)0); ifa = ifa->ifa_next) {
    if (ifa->ifa_addr->sa_family != 132)
     continue;

    if (strcmp(str, ifa->ifa_name) != 0)
     continue;

    sdl = (struct sockaddr_dl *)(void *)ifa->ifa_addr;
   }

   if (sdl != ((void*)0)) {




    memcpy(sdl0, sdl, sdl->sdl_len);
   }
   freeifaddrs(ifap);
   if (sdl != ((void*)0))
    return(1);
   else
    errx(EX_DATAERR,
        "interface '%s' does not exist", str);
  }
  break;
 case 128:
  sa->sa_family = 132;
  break;
 }
 if (strcmp(str, "default") == 0) {



  switch (idx) {
  case 130:
   nrflags |= F_FORCENET;
   getaddr(RTAX_NETMASK, str, 0, nrflags);
   break;
  }
  return (0);
 }
 switch (sa->sa_family) {
 case 132:
  link_addr(str, (struct sockaddr_dl *)(void *)sa);
  return (1);

 case 131:
  sockaddr(str, sa, sizeof(struct sockaddr_storage));
  return (1);



 default:
  break;
 }
 errx(EX_NOHOST, "bad address: %s", str);
}
