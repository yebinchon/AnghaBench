
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef char u_char ;
typedef int netdissect_options ;


 int ND_ISASCII (char) ;
 int ND_ISPRINT (char) ;
 int ND_PRINT (int *) ;
 char ND_TOASCII (char) ;

u_int
fn_printztn(netdissect_options *ndo,
         register const u_char *s, register u_int n, register const u_char *ep)
{
 register u_int bytes;
 register u_char c;

 bytes = 0;
 for (;;) {
  if (n == 0 || (ep != ((void*)0) && s >= ep)) {
   bytes = 0;
   break;
  }

  c = *s++;
  bytes++;
  n--;
  if (c == '\0') {

   break;
  }
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
 return(bytes);
}
