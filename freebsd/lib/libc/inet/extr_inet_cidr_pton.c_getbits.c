
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* digits ;
 char* strchr (char*,char) ;

__attribute__((used)) static int
getbits(const char *src, int ipv6) {
 int bits = 0;
 char *cp, ch;

 if (*src == '\0')
  return (-2);
 do {
  ch = *src++;
  cp = strchr(digits, ch);
  if (cp == ((void*)0))
   return (-2);
  bits *= 10;
  bits += cp - digits;
  if (bits == 0 && *src != '\0')
   return (-2);
  if (bits > (ipv6 ? 128 : 32))
   return (-2);
 } while (*src != '\0');

 return (bits);
}
