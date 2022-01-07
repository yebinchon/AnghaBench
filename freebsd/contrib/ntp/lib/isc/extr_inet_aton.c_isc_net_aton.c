
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;
typedef int isc_uint8_t ;


 int htonl (unsigned long) ;
 scalar_t__ isascii (unsigned char) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ islower (unsigned char) ;
 int isspace (unsigned char) ;
 scalar_t__ isxdigit (unsigned char) ;

int
isc_net_aton(const char *cp, struct in_addr *addr) {
 unsigned long val;
 int base;
 unsigned char c;
 isc_uint8_t parts[4];
 isc_uint8_t *pp = parts;
 int digit;

 c = *cp;
 for (;;) {





  if (!isdigit(c & 0xff))
   return (0);
  val = 0; base = 10; digit = 0;
  if (c == '0') {
   c = *++cp;
   if (c == 'x' || c == 'X')
    base = 16, c = *++cp;
   else {
    base = 8;
    digit = 1;
   }
  }
  for (;;) {






   if (isascii(c) && isdigit(c)) {
    if (base == 8 && (c == '8' || c == '9'))
     return (0);
    val = (val * base) + (c - '0');
    c = *++cp;
    digit = 1;
   } else if (base == 16 && isascii(c) && isxdigit(c)) {
    val = (val << 4) |
     (c + 10 - (islower(c) ? 'a' : 'A'));
    c = *++cp;
    digit = 1;
   } else
    break;
  }
  if (c == '.') {






   if (pp >= parts + 3 || val > 0xffU)
    return (0);
   *pp++ = (isc_uint8_t)val;
   c = *++cp;
  } else
   break;
 }



 if (c != '\0' && (!isascii(c) || !isspace(c)))
  return (0);



 if (!digit)
  return (0);




 switch (pp - parts + 1) {
 case 1:
  break;

 case 2:
  if (val > 0xffffffU)
   return (0);
  val |= parts[0] << 24;
  break;

 case 3:
  if (val > 0xffffU)
   return (0);
  val |= (parts[0] << 24) | (parts[1] << 16);
  break;

 case 4:
  if (val > 0xffU)
   return (0);
  val |= (parts[0] << 24) | (parts[1] << 16) | (parts[2] << 8);
  break;
 }
 if (addr != ((void*)0))
  addr->s_addr = htonl(val);

 return (1);
}
