
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef scalar_t__ u_char ;
struct TYPE_7__ {scalar_t__ const* ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;



 scalar_t__ EDNS0_MASK ;
 scalar_t__ INDIR_MASK ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TTEST2 (scalar_t__ const,int) ;
 int * blabel_print (TYPE_1__*,scalar_t__ const*) ;
 scalar_t__ fn_printn (TYPE_1__*,scalar_t__ const*,scalar_t__,scalar_t__ const*) ;
 scalar_t__ labellen (TYPE_1__*,scalar_t__ const*) ;

const u_char *
ns_nprint(netdissect_options *ndo,
          register const u_char *cp, register const u_char *bp)
{
 register u_int i, l;
 register const u_char *rp = ((void*)0);
 register int compress = 0;
 int elt;
 u_int offset, max_offset;

 if ((l = labellen(ndo, cp)) == (u_int)-1)
  return(((void*)0));
 if (!ND_TTEST2(*cp, 1))
  return(((void*)0));
 max_offset = (u_int)(cp - bp);
 if (((i = *cp++) & INDIR_MASK) != INDIR_MASK) {
  compress = 0;
  rp = cp + l;
 }

 if (i != 0)
  while (i && cp < ndo->ndo_snapend) {
   if ((i & INDIR_MASK) == INDIR_MASK) {
    if (!compress) {
     rp = cp + 1;
     compress = 1;
    }
    if (!ND_TTEST2(*cp, 1))
     return(((void*)0));
    offset = (((i << 8) | *cp) & 0x3fff);
    if (offset >= max_offset) {
     ND_PRINT((ndo, "<BAD PTR>"));
     return(((void*)0));
    }
    max_offset = offset;
    cp = bp + offset;
    if ((l = labellen(ndo, cp)) == (u_int)-1)
     return(((void*)0));
    if (!ND_TTEST2(*cp, 1))
     return(((void*)0));
    i = *cp++;
    continue;
   }
   if ((i & INDIR_MASK) == EDNS0_MASK) {
    elt = (i & ~INDIR_MASK);
    switch(elt) {
    case 128:
     if (blabel_print(ndo, cp) == ((void*)0))
      return (((void*)0));
     break;
    default:

     ND_PRINT((ndo, "<ELT %d>", elt));
     return(((void*)0));
    }
   } else {
    if (fn_printn(ndo, cp, l, ndo->ndo_snapend))
     return(((void*)0));
   }

   cp += l;
   ND_PRINT((ndo, "."));
   if ((l = labellen(ndo, cp)) == (u_int)-1)
    return(((void*)0));
   if (!ND_TTEST2(*cp, 1))
    return(((void*)0));
   i = *cp++;
   if (!compress)
    rp += l + 1;
  }
 else
  ND_PRINT((ndo, "."));
 return (rp);
}
