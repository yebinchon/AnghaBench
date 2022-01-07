
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int ND_ISASCII (int) ;
 int ND_ISPRINT (int) ;
 int ND_PRINT (int *) ;
 int ND_TOASCII (int) ;

void
fn_print_char(netdissect_options *ndo, u_char c)
{
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
