
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_len; scalar_t__ sin6_family; int sin6_addr; } ;
struct addrinfo {int ai_addrlen; int ai_addr; scalar_t__ ai_family; } ;


 int ADDR ;
 scalar_t__ AF_INET6 ;
 int MASK ;
 int bcopy (int ,struct sockaddr_in6*,int ) ;
 int bzero (struct addrinfo*,int) ;
 int errx (int,char*,char const*) ;
 int explicit_prefix ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char const*,int *,struct addrinfo*,struct addrinfo**) ;
 int in6_getprefix (char*,int) ;
 int inet_pton (scalar_t__,char const*,int *) ;
 int newaddr ;
 struct sockaddr_in6** sin6tab ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static void
in6_getaddr(const char *s, int which)
{
 struct sockaddr_in6 *sin = sin6tab[which];
 struct addrinfo hints, *res;
 int error = -1;

 newaddr &= 1;

 sin->sin6_len = sizeof(*sin);
 if (which != MASK)
  sin->sin6_family = AF_INET6;

 if (which == ADDR) {
  char *p = ((void*)0);
  if((p = strrchr(s, '/')) != ((void*)0)) {
   *p = '\0';
   in6_getprefix(p + 1, MASK);
   explicit_prefix = 1;
  }
 }

 if (sin->sin6_family == AF_INET6) {
  bzero(&hints, sizeof(struct addrinfo));
  hints.ai_family = AF_INET6;
  error = getaddrinfo(s, ((void*)0), &hints, &res);
  if (error != 0) {
   if (inet_pton(AF_INET6, s, &sin->sin6_addr) != 1)
    errx(1, "%s: bad value", s);
  } else {
   bcopy(res->ai_addr, sin, res->ai_addrlen);
   freeaddrinfo(res);
  }
 }
}
