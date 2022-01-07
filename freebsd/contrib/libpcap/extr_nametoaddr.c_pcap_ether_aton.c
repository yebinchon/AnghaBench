
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 scalar_t__ isxdigit (unsigned char) ;
 scalar_t__ malloc (int) ;
 int xdtoi (int ) ;

u_char *
pcap_ether_aton(const char *s)
{
 register u_char *ep, *e;
 register u_char d;

 e = ep = (u_char *)malloc(6);
 if (e == ((void*)0))
  return (((void*)0));

 while (*s) {
  if (*s == ':' || *s == '.' || *s == '-')
   s += 1;
  d = xdtoi(*s++);
  if (isxdigit((unsigned char)*s)) {
   d <<= 4;
   d |= xdtoi(*s++);
  }
  *ep++ = d;
 }

 return (e);
}
