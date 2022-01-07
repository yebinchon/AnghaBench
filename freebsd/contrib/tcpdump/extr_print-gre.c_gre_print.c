
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int GRE_VERS_MASK ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int gre_print_0 (int *,int const*,int) ;
 int gre_print_1 (int *,int const*,int) ;
 int tstr ;

void
gre_print(netdissect_options *ndo, const u_char *bp, u_int length)
{
 u_int len = length, vers;

 ND_TCHECK2(*bp, 2);
 if (len < 2)
  goto trunc;
 vers = EXTRACT_16BITS(bp) & GRE_VERS_MASK;
        ND_PRINT((ndo, "GREv%u",vers));

        switch(vers) {
        case 0:
            gre_print_0(ndo, bp, len);
            break;
        case 1:
            gre_print_1(ndo, bp, len);
            break;
 default:
            ND_PRINT((ndo, " ERROR: unknown-version"));
            break;
        }
        return;

trunc:
 ND_PRINT((ndo, "%s", tstr));
 return;
}
