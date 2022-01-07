
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int EDNS0_ELT_BITLABEL ;
 int EDNS0_MASK ;
 int INDIR_MASK ;
 int ND_PRINT (int *) ;
 int ND_TTEST2 (int const,int) ;

__attribute__((used)) static int
labellen(netdissect_options *ndo,
         const u_char *cp)
{
 register u_int i;

 if (!ND_TTEST2(*cp, 1))
  return(-1);
 i = *cp;
 if ((i & INDIR_MASK) == EDNS0_MASK) {
  int bitlen, elt;
  if ((elt = (i & ~INDIR_MASK)) != EDNS0_ELT_BITLABEL) {
   ND_PRINT((ndo, "<ELT %d>", elt));
   return(-1);
  }
  if (!ND_TTEST2(*(cp + 1), 1))
   return(-1);
  if ((bitlen = *(cp + 1)) == 0)
   bitlen = 256;
  return(((bitlen + 7) / 8) + 1);
 } else
  return(i);
}
