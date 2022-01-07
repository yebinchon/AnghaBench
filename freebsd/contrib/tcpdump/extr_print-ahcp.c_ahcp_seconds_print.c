
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int istr ;
 int tstr ;

__attribute__((used)) static int
ahcp_seconds_print(netdissect_options *ndo, const u_char *cp, const u_char *ep)
{
 if (cp + 4 != ep)
  goto invalid;
 ND_TCHECK2(*cp, 4);
 ND_PRINT((ndo, ": %us", EXTRACT_32BITS(cp)));
 return 0;

invalid:
 ND_PRINT((ndo, "%s", istr));
 ND_TCHECK2(*cp, ep - cp);
 return 0;
trunc:
 ND_PRINT((ndo, "%s", tstr));
 return -1;
}
