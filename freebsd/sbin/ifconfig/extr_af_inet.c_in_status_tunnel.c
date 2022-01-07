
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_family; int sa_len; } ;
struct ifreq {int ifr_name; int ifr_addr; } ;
typedef int src ;
typedef int ifr ;
typedef int dst ;
typedef int caddr_t ;


 scalar_t__ AF_INET ;
 int IFNAMSIZ ;
 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 int SIOCGIFPDSTADDR ;
 int SIOCGIFPSRCADDR ;
 scalar_t__ getnameinfo (struct sockaddr const*,int ,char*,int,int ,int ,int ) ;
 scalar_t__ ioctl (int,int ,int ) ;
 int memset (struct ifreq*,int ,int) ;
 int name ;
 int printf (char*,char*,char*) ;
 int strlcpy (int ,int ,int ) ;

__attribute__((used)) static void
in_status_tunnel(int s)
{
 char src[NI_MAXHOST];
 char dst[NI_MAXHOST];
 struct ifreq ifr;
 const struct sockaddr *sa = (const struct sockaddr *) &ifr.ifr_addr;

 memset(&ifr, 0, sizeof(ifr));
 strlcpy(ifr.ifr_name, name, IFNAMSIZ);

 if (ioctl(s, SIOCGIFPSRCADDR, (caddr_t)&ifr) < 0)
  return;
 if (sa->sa_family != AF_INET)
  return;
 if (getnameinfo(sa, sa->sa_len, src, sizeof(src), 0, 0, NI_NUMERICHOST) != 0)
  src[0] = '\0';

 if (ioctl(s, SIOCGIFPDSTADDR, (caddr_t)&ifr) < 0)
  return;
 if (sa->sa_family != AF_INET)
  return;
 if (getnameinfo(sa, sa->sa_len, dst, sizeof(dst), 0, 0, NI_NUMERICHOST) != 0)
  dst[0] = '\0';

 printf("\ttunnel inet %s --> %s\n", src, dst);
}
