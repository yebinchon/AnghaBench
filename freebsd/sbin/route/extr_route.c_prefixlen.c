
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sockaddr_in6 {int sin6_family; int sin6_len; int sin6_addr; } ;
struct sockaddr_in {int sin_family; int sin_len; int sin_addr; } ;




 int EX_OSERR ;
 int EX_USAGE ;
 size_t RTAX_NETMASK ;
 int RTA_NETMASK ;
 int af ;
 int atoi (char const*) ;
 int errx (int ,char*,...) ;
 int memset (void*,int,int) ;
 int rtm_addrs ;
 int * so ;

__attribute__((used)) static int
prefixlen(const char *str)
{
 int len = atoi(str), q, r;
 int max;
 char *p;

 rtm_addrs |= RTA_NETMASK;
 switch (af) {
 default:
  errx(EX_OSERR, "prefixlen not supported in this af");
 }

 if (len < 0 || max < len)
  errx(EX_USAGE, "%s: invalid prefixlen", str);

 q = len >> 3;
 r = len & 7;
 memset((void *)p, 0, max / 8);
 if (q > 0)
  memset((void *)p, 0xff, q);
 if (r > 0)
  *((u_char *)p + q) = (0xff00 >> r) & 0xff;
 if (len == max)
  return (-1);
 else
  return (len);
}
