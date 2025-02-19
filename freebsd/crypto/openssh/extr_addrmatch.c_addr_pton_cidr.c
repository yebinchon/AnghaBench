
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u_int ;
struct xaddr {int af; } ;
typedef int addrbuf ;


 scalar_t__ addr_host_is_all0s (struct xaddr*,unsigned long) ;
 int addr_pton (char*,struct xaddr*) ;
 unsigned long addr_unicast_masklen (int ) ;
 int masklen_valid (int ,unsigned long) ;
 int memcpy (struct xaddr*,struct xaddr*,int) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char const*,int) ;
 unsigned long strtoul (char*,char**,int) ;

__attribute__((used)) static int
addr_pton_cidr(const char *p, struct xaddr *n, u_int *l)
{
 struct xaddr tmp;
 long unsigned int masklen = 999;
 char addrbuf[64], *mp, *cp;


 if (p == ((void*)0) || strlcpy(addrbuf, p, sizeof(addrbuf)) >= sizeof(addrbuf))
  return -1;

 if ((mp = strchr(addrbuf, '/')) != ((void*)0)) {
  *mp = '\0';
  mp++;
  masklen = strtoul(mp, &cp, 10);
  if (*mp == '\0' || *cp != '\0' || masklen > 128)
   return -1;
 }

 if (addr_pton(addrbuf, &tmp) == -1)
  return -1;

 if (mp == ((void*)0))
  masklen = addr_unicast_masklen(tmp.af);
 if (masklen_valid(tmp.af, masklen) == -1)
  return -2;
 if (addr_host_is_all0s(&tmp, masklen) != 0)
  return -2;

 if (n != ((void*)0))
  memcpy(n, &tmp, sizeof(*n));
 if (l != ((void*)0))
  *l = masklen;

 return 0;
}
