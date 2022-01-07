
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int ND_ISASCII (int) ;
 int ND_ISPRINT (int) ;
 int ND_PRINT (int *) ;
 int ND_TOASCII (int) ;

int
fn_printn(netdissect_options *ndo,
          register const u_char *s, register u_int n, register const u_char *ep)
{
 register u_char c;

 while (n > 0 && (ep == ((void*)0) || s < ep)) {
  n--;
  c = *s++;
  if (!ND_ISASCII(c)) {
   c = ND_TOASCII(c);
   ND_PRINT((ndo, "M-"));
  }
  if (!ND_ISPRINT(c)) {
   c ^= 0x40;
   ND_PRINT((ndo, "^"));
  }
  ND_PRINT((ndo, "%c", c));
 }
 return (n == 0) ? 0 : 1;
}
