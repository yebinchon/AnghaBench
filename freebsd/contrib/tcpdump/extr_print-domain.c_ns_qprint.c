
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int C_IN ;
 int C_QU ;
 int EXTRACT_16BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TTEST2 (int const,int) ;
 int ns_class2str ;
 int * ns_nprint (int *,int const*,int const*) ;
 int * ns_nskip (int *,int const*) ;
 int ns_type2str ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static const u_char *
ns_qprint(netdissect_options *ndo,
          register const u_char *cp, register const u_char *bp, int is_mdns)
{
 register const u_char *np = cp;
 register u_int i, class;

 cp = ns_nskip(ndo, cp);

 if (cp == ((void*)0) || !ND_TTEST2(*cp, 4))
  return(((void*)0));


 i = EXTRACT_16BITS(cp);
 cp += 2;
 ND_PRINT((ndo, " %s", tok2str(ns_type2str, "Type%d", i)));

 i = EXTRACT_16BITS(cp);
 cp += 2;
 if (is_mdns)
  class = (i & ~C_QU);
 else
  class = i;
 if (class != C_IN)
  ND_PRINT((ndo, " %s", tok2str(ns_class2str, "(Class %d)", class)));
 if (is_mdns) {
  ND_PRINT((ndo, i & C_QU ? " (QU)" : " (QM)"));
 }

 ND_PRINT((ndo, "? "));
 cp = ns_nprint(ndo, np, bp);
 return(cp ? cp + 4 : ((void*)0));
}
