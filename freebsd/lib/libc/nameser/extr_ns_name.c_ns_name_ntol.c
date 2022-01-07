
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;


 int EMSGSIZE ;
 int NS_CMPRSFLGS ;
 int errno ;
 scalar_t__ isascii (int ) ;
 scalar_t__ isupper (int ) ;
 int labellen (int const*) ;
 int tolower (int ) ;

int
ns_name_ntol(const u_char *src, u_char *dst, size_t dstsiz)
{
 const u_char *cp;
 u_char *dn, *eom;
 u_char c;
 u_int n;
 int l;

 cp = src;
 dn = dst;
 eom = dst + dstsiz;

 if (dn >= eom) {
  errno = EMSGSIZE;
  return (-1);
 }
 while ((n = *cp++) != 0) {
  if ((n & NS_CMPRSFLGS) == NS_CMPRSFLGS) {

   errno = EMSGSIZE;
   return (-1);
  }
  *dn++ = n;
  if ((l = labellen(cp - 1)) < 0) {
   errno = EMSGSIZE;
   return (-1);
  }
  if (dn + l >= eom) {
   errno = EMSGSIZE;
   return (-1);
  }
  for ((void)((void*)0); l > 0; l--) {
   c = *cp++;
   if (isascii(c) && isupper(c))
    *dn++ = tolower(c);
   else
    *dn++ = c;
  }
 }
 *dn++ = '\0';
 return (dn - dst);
}
