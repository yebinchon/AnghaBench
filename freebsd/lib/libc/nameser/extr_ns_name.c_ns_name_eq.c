
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* ns_nname_ct ;


 int EISDIR ;
 int EMSGSIZE ;
 int NS_CMPRSFLGS ;
 int errno ;
 scalar_t__ strncasecmp (char const*,char const*,int) ;

int
ns_name_eq(ns_nname_ct a, size_t as, ns_nname_ct b, size_t bs) {
 ns_nname_ct ae = a + as, be = b + bs;
 int ac, bc;

 while (ac = *a, bc = *b, ac != 0 && bc != 0) {
  if ((ac & NS_CMPRSFLGS) != 0 || (bc & NS_CMPRSFLGS) != 0) {
   errno = EISDIR;
   return (-1);
  }
  if (a + ac >= ae || b + bc >= be) {
   errno = EMSGSIZE;
   return (-1);
  }
  if (ac != bc || strncasecmp((const char *) ++a,
         (const char *) ++b, ac) != 0)
   return (0);
  a += ac, b += bc;
 }
 return (ac == 0 && bc == 0);
}
