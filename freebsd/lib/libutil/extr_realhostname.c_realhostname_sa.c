
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * s6_addr; } ;
struct sockaddr_in6 {scalar_t__ sin6_scope_id; TYPE_2__ sin6_addr; int sin6_port; } ;
struct sockaddr_in {int sin_len; scalar_t__ ai_family; int ai_flags; int * ai_canonname; struct sockaddr* ai_addr; struct sockaddr_in* ai_next; int ai_socktype; int sin_addr; int sin_port; scalar_t__ sin_family; } ;
struct sockaddr {scalar_t__ sa_family; int sa_len; } ;
struct in_addr {int dummy; } ;
struct addrinfo {int sin_len; scalar_t__ ai_family; int ai_flags; int * ai_canonname; struct sockaddr* ai_addr; struct addrinfo* ai_next; int ai_socktype; int sin_addr; int sin_port; scalar_t__ sin_family; } ;
typedef int lsin ;
typedef int buf ;
struct TYPE_3__ {int si_port; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int AI_CANONNAME ;
 int AI_PASSIVE ;
 int HOSTNAME_FOUND ;
 int HOSTNAME_INCORRECTNAME ;
 int HOSTNAME_INVALIDADDR ;
 int HOSTNAME_INVALIDNAME ;
 scalar_t__ IN6_IS_ADDR_V4MAPPED (TYPE_2__*) ;
 int NI_MAXHOST ;
 int NI_NAMEREQD ;
 int NI_NUMERICHOST ;
 struct sockaddr_in6* SOCKADDR_IN6 (struct sockaddr*) ;
 TYPE_1__* SOCKINET (struct sockaddr*) ;
 int SOCK_STREAM ;
 int freeaddrinfo (struct sockaddr_in*) ;
 int getaddrinfo (char*,int *,struct sockaddr_in*,struct sockaddr_in**) ;
 int getnameinfo (struct sockaddr*,int,char*,int,int *,int ,int ) ;
 int memcmp (struct sockaddr*,struct sockaddr*,int) ;
 int memcpy (int *,int *,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int strlcpy (char*,int *,int) ;
 size_t strlen (char*) ;
 int strncpy (char*,char*,size_t) ;
 int trimdomain (char*,size_t) ;

int
realhostname_sa(char *host, size_t hsize, struct sockaddr *addr, int addrlen)
{
 int result, error;
 char buf[NI_MAXHOST];




 result = HOSTNAME_INVALIDADDR;
 error = getnameinfo(addr, addrlen, buf, sizeof(buf), ((void*)0), 0,
       NI_NAMEREQD);
 if (error == 0) {
  struct addrinfo hints, *res, *ores;
  struct sockaddr *sa;

  memset(&hints, 0, sizeof(struct addrinfo));
  hints.ai_family = addr->sa_family;
  hints.ai_flags = AI_CANONNAME | AI_PASSIVE;
  hints.ai_socktype = SOCK_STREAM;

  error = getaddrinfo(buf, ((void*)0), &hints, &res);
  if (error) {
   result = HOSTNAME_INVALIDNAME;
   goto numeric;
  }
  for (ores = res; ; res = res->ai_next) {
   if (res == ((void*)0)) {
    freeaddrinfo(ores);
    result = HOSTNAME_INCORRECTNAME;
    goto numeric;
   }
   sa = res->ai_addr;
   if (sa == ((void*)0)) {
    freeaddrinfo(ores);
    result = HOSTNAME_INCORRECTNAME;
    goto numeric;
   }
   if (sa->sa_len == addrlen &&
       sa->sa_family == addr->sa_family) {
    SOCKINET(sa)->si_port = SOCKINET(addr)->si_port;
    if (!memcmp(sa, addr, sa->sa_len)) {
     result = HOSTNAME_FOUND;
     if (ores->ai_canonname == ((void*)0)) {
      freeaddrinfo(ores);
      goto numeric;
     }
     strlcpy(buf, ores->ai_canonname,
      sizeof(buf));
     trimdomain(buf, hsize);
     if (strlen(buf) > hsize &&
         addr->sa_family == AF_INET) {
      freeaddrinfo(ores);
      goto numeric;
     }
     strncpy(host, buf, hsize);
     break;
    }
   }
  }
  freeaddrinfo(ores);
 } else {
    numeric:
  if (getnameinfo(addr, addrlen, buf, sizeof(buf), ((void*)0), 0,
    NI_NUMERICHOST) == 0)
   strncpy(host, buf, hsize);
 }

 return result;
}
