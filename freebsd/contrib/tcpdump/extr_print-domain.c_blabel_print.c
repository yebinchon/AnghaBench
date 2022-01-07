
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int ND_TCHECK (int const) ;
 int ND_TTEST2 (int const,int) ;

__attribute__((used)) static const u_char *
blabel_print(netdissect_options *ndo,
             const u_char *cp)
{
 int bitlen, slen, b;
 const u_char *bitp, *lim;
 char tc;

 if (!ND_TTEST2(*cp, 1))
  return(((void*)0));
 if ((bitlen = *cp) == 0)
  bitlen = 256;
 slen = (bitlen + 3) / 4;
 lim = cp + 1 + slen;


 ND_PRINT((ndo, "\\[x"));
 for (bitp = cp + 1, b = bitlen; bitp < lim && b > 7; b -= 8, bitp++) {
  ND_TCHECK(*bitp);
  ND_PRINT((ndo, "%02x", *bitp));
 }
 if (b > 4) {
  ND_TCHECK(*bitp);
  tc = *bitp++;
  ND_PRINT((ndo, "%02x", tc & (0xff << (8 - b))));
 } else if (b > 0) {
  ND_TCHECK(*bitp);
  tc = *bitp++;
  ND_PRINT((ndo, "%1x", ((tc >> 4) & 0x0f) & (0x0f << (4 - b))));
 }
 ND_PRINT((ndo, "/%d]", bitlen));
 return lim;
trunc:
 ND_PRINT((ndo, ".../%d]", bitlen));
 return ((void*)0);
}
