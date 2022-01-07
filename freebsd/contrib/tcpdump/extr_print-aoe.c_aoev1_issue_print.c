
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int const AOEV1_ISSUE_ARG_LEN ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int aoev1_aflag_str ;
 int bittok2str (int ,char*,int const) ;
 int istr ;
 int tstr ;

__attribute__((used)) static void
aoev1_issue_print(netdissect_options *ndo,
                  const u_char *cp, const u_int len)
{
 const u_char *ep = cp + len;

 if (len < AOEV1_ISSUE_ARG_LEN)
  goto invalid;

 ND_TCHECK2(*cp, 1);
 ND_PRINT((ndo, "\n\tAFlags: [%s]", bittok2str(aoev1_aflag_str, "none", *cp)));
 cp += 1;

 ND_TCHECK2(*cp, 1);
 ND_PRINT((ndo, ", Err/Feature: %u", *cp));
 cp += 1;

 ND_TCHECK2(*cp, 1);
 ND_PRINT((ndo, ", Sector Count: %u", *cp));
 cp += 1;

 ND_TCHECK2(*cp, 1);
 ND_PRINT((ndo, ", Cmd/Status: %u", *cp));
 cp += 1;

 ND_TCHECK2(*cp, 1);
 ND_PRINT((ndo, "\n\tlba0: %u", *cp));
 cp += 1;

 ND_TCHECK2(*cp, 1);
 ND_PRINT((ndo, ", lba1: %u", *cp));
 cp += 1;

 ND_TCHECK2(*cp, 1);
 ND_PRINT((ndo, ", lba2: %u", *cp));
 cp += 1;

 ND_TCHECK2(*cp, 1);
 ND_PRINT((ndo, ", lba3: %u", *cp));
 cp += 1;

 ND_TCHECK2(*cp, 1);
 ND_PRINT((ndo, ", lba4: %u", *cp));
 cp += 1;

 ND_TCHECK2(*cp, 1);
 ND_PRINT((ndo, ", lba5: %u", *cp));
 cp += 1;

 ND_TCHECK2(*cp, 2);
 cp += 2;

 if (len > AOEV1_ISSUE_ARG_LEN)
  ND_PRINT((ndo, "\n\tData: %u bytes", len - AOEV1_ISSUE_ARG_LEN));
 return;

invalid:
 ND_PRINT((ndo, "%s", istr));
 ND_TCHECK2(*cp, ep - cp);
 return;
trunc:
 ND_PRINT((ndo, "%s", tstr));
}
