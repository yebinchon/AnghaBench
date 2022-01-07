
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 void** digits ;

char *
ether_sprintf(u_char *ap)
{
 int i;
 static char etherbuf[18];
 char *cp = etherbuf;

 for (i = 0; i < 6; i++) {
  *cp++ = digits[*ap >> 4];
  *cp++ = digits[*ap++ & 0xf];
  *cp++ = ':';
 }
 *--cp = 0;
 return (etherbuf);
}
