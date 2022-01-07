
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int ND_TCHECK (int const) ;
 int ip6_print (int *,int const*,int) ;
 int ip_print (int *,int const*,int) ;
 int tstr ;

void
ipN_print(netdissect_options *ndo, register const u_char *bp, register u_int length)
{
 if (length < 1) {
  ND_PRINT((ndo, "truncated-ip %d", length));
  return;
 }

 ND_TCHECK(*bp);
 switch (*bp & 0xF0) {
 case 0x40:
  ip_print (ndo, bp, length);
  break;
 case 0x60:
  ip6_print (ndo, bp, length);
  break;
 default:
  ND_PRINT((ndo, "unknown ip %d", (*bp & 0xF0) >> 4));
  break;
 }
 return;

trunc:
 ND_PRINT((ndo, "%s", tstr));
 return;
}
