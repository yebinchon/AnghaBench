
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int hex2num (int ) ;

int hwaddr_compact_aton(const char *txt, u8 *addr)
{
 int i;

 for (i = 0; i < 6; i++) {
  int a, b;

  a = hex2num(*txt++);
  if (a < 0)
   return -1;
  b = hex2num(*txt++);
  if (b < 0)
   return -1;
  *addr++ = (a << 4) | b;
 }

 return 0;
}
