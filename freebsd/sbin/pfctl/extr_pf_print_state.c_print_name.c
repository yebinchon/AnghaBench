
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin_len; int sin_family; int sin6_len; int sin6_family; int sin6_addr; int sin_addr; } ;
struct sockaddr_in {int sin_len; int sin_family; int sin6_len; int sin6_family; int sin6_addr; int sin_addr; } ;
struct sockaddr {int dummy; } ;
struct pf_addr {int v6; int v4; } ;
typedef int sin6 ;
typedef int sin ;
typedef int sa_family_t ;
typedef int host ;




 int NI_MAXHOST ;
 int NI_NOFQDN ;
 int getnameinfo (struct sockaddr*,int,char*,int,int *,int ,int ) ;
 int memset (struct sockaddr_in6*,int ,int) ;
 int printf (char*,char*) ;
 int strlcpy (char*,char*,int) ;

void
print_name(struct pf_addr *addr, sa_family_t af)
{
 char host[NI_MAXHOST];

 strlcpy(host, "?", sizeof(host));
 switch (af) {
 case 129: {
  struct sockaddr_in sin;

  memset(&sin, 0, sizeof(sin));
  sin.sin_len = sizeof(sin);
  sin.sin_family = 129;
  sin.sin_addr = addr->v4;
  getnameinfo((struct sockaddr *)&sin, sin.sin_len,
      host, sizeof(host), ((void*)0), 0, NI_NOFQDN);
  break;
 }
 case 128: {
  struct sockaddr_in6 sin6;

  memset(&sin6, 0, sizeof(sin6));
  sin6.sin6_len = sizeof(sin6);
  sin6.sin6_family = 128;
  sin6.sin6_addr = addr->v6;
  getnameinfo((struct sockaddr *)&sin6, sin6.sin6_len,
      host, sizeof(host), ((void*)0), 0, NI_NOFQDN);
  break;
 }
 }
 printf("%s", host);
}
