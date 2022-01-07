
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int u_char ;
struct TYPE_6__ {int * str; } ;
struct be {TYPE_1__ data; scalar_t__ asnlen; } ;
struct TYPE_7__ {int ndo_snapend; } ;
typedef TYPE_2__ netdissect_options ;


 int ND_ISPRINT (int const) ;
 int ND_PRINT (TYPE_2__*) ;
 int ND_TCHECK2 (int const,scalar_t__) ;
 scalar_t__ fn_printn (TYPE_2__*,int const*,scalar_t__,int ) ;
 int tstr ;

__attribute__((used)) static int
asn1_print_string(netdissect_options *ndo, struct be *elem)
{
 register int printable = 1, first = 1;
 const u_char *p;
 uint32_t asnlen = elem->asnlen;
 uint32_t i;

 p = elem->data.str;
 ND_TCHECK2(*p, asnlen);
 for (i = asnlen; printable && i-- > 0; p++)
  printable = ND_ISPRINT(*p);
 p = elem->data.str;
 if (printable) {
  ND_PRINT((ndo, "\""));
  if (fn_printn(ndo, p, asnlen, ndo->ndo_snapend)) {
   ND_PRINT((ndo, "\""));
   goto trunc;
  }
  ND_PRINT((ndo, "\""));
 } else {
  for (i = asnlen; i-- > 0; p++) {
   ND_PRINT((ndo, first ? "%.2x" : "_%.2x", *p));
   first = 0;
  }
 }
 return 0;

trunc:
 ND_PRINT((ndo, "%s", tstr));
 return -1;
}
