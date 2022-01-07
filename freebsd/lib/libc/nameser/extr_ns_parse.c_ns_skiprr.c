
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef scalar_t__ ns_sect ;


 int EMSGSIZE ;
 int NS_GET16 (int,int const*) ;
 int NS_INT16SZ ;
 int NS_INT32SZ ;
 int RETERR (int ) ;
 int dn_skipname (int const*,int const*) ;
 scalar_t__ ns_s_qd ;

int
ns_skiprr(const u_char *ptr, const u_char *eom, ns_sect section, int count) {
 const u_char *optr = ptr;

 for ((void)((void*)0); count > 0; count--) {
  int b, rdlength;

  b = dn_skipname(ptr, eom);
  if (b < 0)
   RETERR(EMSGSIZE);
  ptr += b + NS_INT16SZ + NS_INT16SZ ;
  if (section != ns_s_qd) {
   if (ptr + NS_INT32SZ + NS_INT16SZ > eom)
    RETERR(EMSGSIZE);
   ptr += NS_INT32SZ ;
   NS_GET16(rdlength, ptr);
   ptr += rdlength ;
  }
 }
 if (ptr > eom)
  RETERR(EMSGSIZE);
 return (ptr - optr);
}
