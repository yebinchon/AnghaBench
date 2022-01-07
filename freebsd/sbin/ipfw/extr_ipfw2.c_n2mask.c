
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct in6_addr {int dummy; } ;


 int memset (struct in6_addr*,int ,int) ;

void
n2mask(struct in6_addr *mask, int n)
{
 static int minimask[9] =
     { 0x00, 0x80, 0xc0, 0xe0, 0xf0, 0xf8, 0xfc, 0xfe, 0xff };
 u_char *p;

 memset(mask, 0, sizeof(struct in6_addr));
 p = (u_char *) mask;
 for (; n > 0; p++, n -= 8) {
  if (n >= 8)
   *p = 0xff;
  else
   *p = minimask[n];
 }
 return;
}
