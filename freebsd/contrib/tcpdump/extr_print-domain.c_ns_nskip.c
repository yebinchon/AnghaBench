
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int EDNS0_ELT_BITLABEL ;
 int EDNS0_MASK ;
 int INDIR_MASK ;
 int ND_TTEST2 (int const,int) ;

__attribute__((used)) static const u_char *
ns_nskip(netdissect_options *ndo,
         register const u_char *cp)
{
 register u_char i;

 if (!ND_TTEST2(*cp, 1))
  return (((void*)0));
 i = *cp++;
 while (i) {
  if ((i & INDIR_MASK) == INDIR_MASK)
   return (cp + 1);
  if ((i & INDIR_MASK) == EDNS0_MASK) {
   int bitlen, bytelen;

   if ((i & ~INDIR_MASK) != EDNS0_ELT_BITLABEL)
    return(((void*)0));
   if (!ND_TTEST2(*cp, 1))
    return (((void*)0));
   if ((bitlen = *cp++) == 0)
    bitlen = 256;
   bytelen = (bitlen + 7) / 8;
   cp += bytelen;
  } else
   cp += i;
  if (!ND_TTEST2(*cp, 1))
   return (((void*)0));
  i = *cp++;
 }
 return (cp);
}
