
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;





__attribute__((used)) static int
matchlen(struct sockaddr *src, struct sockaddr *dst)
{
 int match = 0;
 u_char *s, *d;
 u_char *lim, r;
 int addrlen;

 switch (src->sa_family) {
 case 129:
  s = (u_char *)&((struct sockaddr_in *)src)->sin_addr;
  d = (u_char *)&((struct sockaddr_in *)dst)->sin_addr;
  addrlen = sizeof(struct in_addr);
  lim = s + addrlen;
  break;
 default:
  return(0);
 }

 while (s < lim)
  if ((r = (*d++ ^ *s++)) != 0) {
   while ((r & 0x80) == 0) {
    match++;
    r <<= 1;
   }
   break;
  } else
   match += 8;
 return(match);
}
