
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;

__attribute__((used)) static void
atp_bitmap_print(netdissect_options *ndo,
                 register u_char bm)
{
 register char c;
 register int i;






 if ((bm + 1) & (bm & 0xff)) {
  c = '<';
  for (i = 0; bm; ++i) {
   if (bm & 1) {
    ND_PRINT((ndo, "%c%d", c, i));
    c = ',';
   }
   bm >>= 1;
  }
  ND_PRINT((ndo, ">"));
 } else {
  for (i = 0; bm; ++i)
   bm >>= 1;
  if (i > 1)
   ND_PRINT((ndo, "<0-%d>", i - 1));
  else
   ND_PRINT((ndo, "<0>"));
 }
}
