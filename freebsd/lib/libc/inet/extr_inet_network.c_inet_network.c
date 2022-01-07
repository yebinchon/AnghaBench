
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int in_addr_t ;


 unsigned int INADDR_NONE ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ islower (unsigned char) ;
 int isspace (char const) ;
 scalar_t__ isxdigit (unsigned char) ;

in_addr_t
inet_network(const char *cp)
{
 in_addr_t val, base, n;
 char c;
 in_addr_t parts[4], *pp = parts;
 int i, digit;

again:
 val = 0; base = 10; digit = 0;
 if (*cp == '0')
  digit = 1, base = 8, cp++;
 if (*cp == 'x' || *cp == 'X')
  base = 16, cp++;
 while ((c = *cp) != 0) {
  if (isdigit((unsigned char)c)) {
   if (base == 8U && (c == '8' || c == '9'))
    return (INADDR_NONE);
   val = (val * base) + (c - '0');
   cp++;
   digit = 1;
   continue;
  }
  if (base == 16U && isxdigit((unsigned char)c)) {
   val = (val << 4) +
         (c + 10 - (islower((unsigned char)c) ? 'a' : 'A'));
   cp++;
   digit = 1;
   continue;
  }
  break;
 }
 if (!digit)
  return (INADDR_NONE);
 if (pp >= parts + 4 || val > 0xffU)
  return (INADDR_NONE);
 if (*cp == '.') {
  *pp++ = val, cp++;
  goto again;
 }
 if (*cp && !isspace(*cp&0xff))
  return (INADDR_NONE);
 *pp++ = val;
 n = pp - parts;
 if (n > 4U)
  return (INADDR_NONE);
 for (val = 0, i = 0; i < n; i++) {
  val <<= 8;
  val |= parts[i] & 0xff;
 }
 return (val);
}
