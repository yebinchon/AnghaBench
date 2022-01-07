
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct iaddr {scalar_t__ len; int iabuf; } ;
typedef int pbuf ;


 char* inet_ntoa (struct in_addr) ;
 int memcpy (struct in_addr*,int *,int) ;
 int strlcpy (char*,char*,int) ;

char *
piaddr(struct iaddr addr)
{
 static char pbuf[32];
 struct in_addr a;
 char *s;

 memcpy(&a, &(addr.iabuf), sizeof(struct in_addr));

 if (addr.len == 0)
  strlcpy(pbuf, "<null address>", sizeof(pbuf));
 else {
  s = inet_ntoa(a);
  if (s != ((void*)0))
   strlcpy(pbuf, s, sizeof(pbuf));
  else
   strlcpy(pbuf, "<invalid address>", sizeof(pbuf));
 }
 return (pbuf);
}
