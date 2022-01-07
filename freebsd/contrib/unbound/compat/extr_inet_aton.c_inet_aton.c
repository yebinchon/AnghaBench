
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct in_addr {int s_addr; } ;


 int htonl (int) ;
 scalar_t__ isascii (unsigned char) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ islower (unsigned char) ;
 int isspace (unsigned char) ;
 scalar_t__ isxdigit (unsigned char) ;

int
inet_aton(const char *cp, struct in_addr *addr)
{
 uint32_t val;
 int base, n;
 char c;
 unsigned int parts[4];
 unsigned int *pp = parts;

 c = *cp;
 for (;;) {





  if (!isdigit((unsigned char)c))
   return (0);
  val = 0; base = 10;
  if (c == '0') {
   c = *++cp;
   if (c == 'x' || c == 'X')
    base = 16, c = *++cp;
   else
    base = 8;
  }
  for (;;) {
   if (isascii((unsigned char)c) && isdigit((unsigned char)c)) {
    val = (val * base) + (c - '0');
    c = *++cp;
   } else if (base == 16 && isascii((unsigned char)c) && isxdigit((unsigned char)c)) {
    val = (val << 4) |
     (c + 10 - (islower((unsigned char)c) ? 'a' : 'A'));
    c = *++cp;
   } else
    break;
  }
  if (c == '.') {






   if (pp >= parts + 3)
    return (0);
   *pp++ = val;
   c = *++cp;
  } else
   break;
 }



 if (c != '\0' && (!isascii((unsigned char)c) || !isspace((unsigned char)c)))
  return (0);




 n = pp - parts + 1;
 switch (n) {

 case 0:
  return (0);

 case 1:
  break;

 case 2:
  if ((val > 0xffffff) || (parts[0] > 0xff))
   return (0);
  val |= parts[0] << 24;
  break;

 case 3:
  if ((val > 0xffff) || (parts[0] > 0xff) || (parts[1] > 0xff))
   return (0);
  val |= (parts[0] << 24) | (parts[1] << 16);
  break;

 case 4:
  if ((val > 0xff) || (parts[0] > 0xff) || (parts[1] > 0xff) || (parts[2] > 0xff))
   return (0);
  val |= (parts[0] << 24) | (parts[1] << 16) | (parts[2] << 8);
  break;
 }
 if (addr)
  addr->s_addr = htonl(val);
 return (1);
}
