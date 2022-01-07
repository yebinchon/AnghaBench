
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr_dl {int dummy; } ;
struct sockaddr {int sa_family; } ;
typedef int nbuf ;





 int INET6_ADDRSTRLEN ;
 int fflush (int ) ;
 char* inet_ntoa (int ) ;
 char* inet_ntop (int,int *,char*,int) ;
 char* link_ntoa (struct sockaddr_dl*) ;
 int printf (char*,char const*,char*) ;
 int stdout ;

__attribute__((used)) static void
sodump(struct sockaddr *sa, const char *which)
{




 switch (sa->sa_family) {
 case 128:
  (void)printf("%s: link %s; ", which,
      link_ntoa((struct sockaddr_dl *)(void *)sa));
  break;
 }
 (void)fflush(stdout);
}
