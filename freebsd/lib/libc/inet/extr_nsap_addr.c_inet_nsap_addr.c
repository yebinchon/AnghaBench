
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef char u_char ;


 int isascii (char) ;
 scalar_t__ islower (char) ;
 scalar_t__ isxdigit (char) ;
 char toupper (char) ;
 char xtob (char) ;

u_int
inet_nsap_addr(const char *ascii, u_char *binary, int maxlen) {
 u_char c, nib;
 u_int len = 0;

 if (ascii[0] != '0' || (ascii[1] != 'x' && ascii[1] != 'X'))
  return (0);
 ascii += 2;

 while ((c = *ascii++) != '\0' && len < (u_int)maxlen) {
  if (c == '.' || c == '+' || c == '/')
   continue;
  if (!isascii(c))
   return (0);
  if (islower(c))
   c = toupper(c);
  if (isxdigit(c)) {
   nib = xtob(c);
   c = *ascii++;
   if (c != '\0') {
    c = toupper(c);
    if (isxdigit(c)) {
     *binary++ = (nib << 4) | xtob(c);
     len++;
    } else
     return (0);
   }
   else
    return (0);
  }
  else
   return (0);
 }
 return (len);
}
