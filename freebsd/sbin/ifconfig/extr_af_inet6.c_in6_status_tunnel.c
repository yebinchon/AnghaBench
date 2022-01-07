
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_family; int sa_len; } ;
struct in6_ifreq {int ifr_name; int ifr_addr; } ;
typedef int src ;
typedef int in6_ifr ;
typedef int dst ;
typedef int caddr_t ;


 scalar_t__ AF_INET6 ;
 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 int SIOCGIFPDSTADDR_IN6 ;
 int SIOCGIFPSRCADDR_IN6 ;
 scalar_t__ getnameinfo (struct sockaddr const*,int ,char*,int,int ,int ,int ) ;
 scalar_t__ ioctl (int,int ,int ) ;
 int memset (struct in6_ifreq*,int ,int) ;
 int name ;
 int printf (char*,char*,char*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
in6_status_tunnel(int s)
{
 char src[NI_MAXHOST];
 char dst[NI_MAXHOST];
 struct in6_ifreq in6_ifr;
 const struct sockaddr *sa = (const struct sockaddr *) &in6_ifr.ifr_addr;

 memset(&in6_ifr, 0, sizeof(in6_ifr));
 strlcpy(in6_ifr.ifr_name, name, sizeof(in6_ifr.ifr_name));

 if (ioctl(s, SIOCGIFPSRCADDR_IN6, (caddr_t)&in6_ifr) < 0)
  return;
 if (sa->sa_family != AF_INET6)
  return;
 if (getnameinfo(sa, sa->sa_len, src, sizeof(src), 0, 0,
     NI_NUMERICHOST) != 0)
  src[0] = '\0';

 if (ioctl(s, SIOCGIFPDSTADDR_IN6, (caddr_t)&in6_ifr) < 0)
  return;
 if (sa->sa_family != AF_INET6)
  return;
 if (getnameinfo(sa, sa->sa_len, dst, sizeof(dst), 0, 0,
     NI_NUMERICHOST) != 0)
  dst[0] = '\0';

 printf("\ttunnel inet6 %s --> %s\n", src, dst);
}
