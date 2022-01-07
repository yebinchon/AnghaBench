
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int hex2num (int ) ;

int hwaddr_aton2(const char *txt, u8 *addr)
{
 int i;
 const char *pos = txt;

 for (i = 0; i < 6; i++) {
  int a, b;

  while (*pos == ':' || *pos == '.' || *pos == '-')
   pos++;

  a = hex2num(*pos++);
  if (a < 0)
   return -1;
  b = hex2num(*pos++);
  if (b < 0)
   return -1;
  *addr++ = (a << 4) | b;
 }

 return pos - txt;
}
