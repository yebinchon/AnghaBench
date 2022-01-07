
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * s6_addr; } ;
struct sockaddr_in6 {TYPE_1__ sin6_addr; } ;
struct sockaddr_in {int sin_len; scalar_t__ ai_family; int ai_addrlen; struct sockaddr const* ai_addr; struct sockaddr_in* ai_next; int ai_socktype; int sin_addr; int sin_family; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct addrinfo {int sin_len; scalar_t__ ai_family; int ai_addrlen; struct sockaddr const* ai_addr; struct addrinfo* ai_next; int ai_socktype; int sin_addr; int sin_family; } ;
typedef int socklen_t ;
typedef int sin ;
typedef int hints ;
typedef int h2 ;
typedef int h1 ;


 int AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ IN6_IS_ADDR_V4MAPPED (TYPE_1__*) ;
 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 int SOCK_DGRAM ;
 int freeaddrinfo (struct sockaddr_in*) ;
 int getaddrinfo (char const*,char*,struct sockaddr_in*,struct sockaddr_in**) ;
 scalar_t__ getnameinfo (struct sockaddr const*,int,char*,int,int *,int ,int ) ;
 int memcpy (int *,int *,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
__icheckhost(const struct sockaddr *raddr, socklen_t salen, const char *lhost)
{
 struct sockaddr_in sin;
 struct sockaddr_in6 *sin6;
 struct addrinfo hints, *res, *r;
 int error;
 char h1[NI_MAXHOST], h2[NI_MAXHOST];

 if (raddr->sa_family == AF_INET6) {
  sin6 = (struct sockaddr_in6 *)raddr;
  if (IN6_IS_ADDR_V4MAPPED(&sin6->sin6_addr)) {
   memset(&sin, 0, sizeof(sin));
   sin.sin_family = AF_INET;
   sin.sin_len = sizeof(struct sockaddr_in);
   memcpy(&sin.sin_addr, &sin6->sin6_addr.s6_addr[12],
          sizeof(sin.sin_addr));
   raddr = (struct sockaddr *)&sin;
   salen = sin.sin_len;
  }
 }

 h1[0] = '\0';
 if (getnameinfo(raddr, salen, h1, sizeof(h1), ((void*)0), 0,
   NI_NUMERICHOST) != 0)
  return (0);


 memset(&hints, 0, sizeof(hints));
 hints.ai_family = raddr->sa_family;
 hints.ai_socktype = SOCK_DGRAM;
 res = ((void*)0);
 error = getaddrinfo(lhost, "0", &hints, &res);
 if (error)
  return (0);

 for (r = res; r ; r = r->ai_next) {
  h2[0] = '\0';
  if (getnameinfo(r->ai_addr, r->ai_addrlen, h2, sizeof(h2),
    ((void*)0), 0, NI_NUMERICHOST) != 0)
   continue;
  if (strcmp(h1, h2) == 0) {
   freeaddrinfo(res);
   return (1);
  }
 }


 freeaddrinfo(res);
 return (0);
}
