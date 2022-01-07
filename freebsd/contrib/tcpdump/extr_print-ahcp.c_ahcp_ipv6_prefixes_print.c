
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int ip6addr_string (int *,int const*) ;
 int istr ;
 int tstr ;

__attribute__((used)) static int
ahcp_ipv6_prefixes_print(netdissect_options *ndo, const u_char *cp, const u_char *ep)
{
 const char *sep = ": ";

 while (cp < ep) {
  if (cp + 17 > ep)
   goto invalid;
  ND_TCHECK2(*cp, 17);
  ND_PRINT((ndo, "%s%s/%u", sep, ip6addr_string(ndo, cp), *(cp + 16)));
  cp += 17;
  sep = ", ";
 }
 return 0;

invalid:
 ND_PRINT((ndo, "%s", istr));
 ND_TCHECK2(*cp, ep - cp);
 return 0;
trunc:
 ND_PRINT((ndo, "%s", tstr));
 return -1;
}
