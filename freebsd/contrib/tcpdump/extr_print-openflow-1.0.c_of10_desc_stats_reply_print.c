
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int DESC_STR_LEN ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,scalar_t__ const) ;
 scalar_t__ const OF_DESC_STATS_LEN ;
 int SERIAL_NUM_LEN ;
 int fn_print (int *,int const*,int const*) ;
 int istr ;
 int tstr ;

__attribute__((used)) static const u_char *
of10_desc_stats_reply_print(netdissect_options *ndo,
                            const u_char *cp, const u_char *ep, const u_int len)
{
 if (len != OF_DESC_STATS_LEN)
  goto invalid;

 ND_TCHECK2(*cp, DESC_STR_LEN);
 ND_PRINT((ndo, "\n\t  mfr_desc '"));
 fn_print(ndo, cp, cp + DESC_STR_LEN);
 ND_PRINT((ndo, "'"));
 cp += DESC_STR_LEN;

 ND_TCHECK2(*cp, DESC_STR_LEN);
 ND_PRINT((ndo, "\n\t  hw_desc '"));
 fn_print(ndo, cp, cp + DESC_STR_LEN);
 ND_PRINT((ndo, "'"));
 cp += DESC_STR_LEN;

 ND_TCHECK2(*cp, DESC_STR_LEN);
 ND_PRINT((ndo, "\n\t  sw_desc '"));
 fn_print(ndo, cp, cp + DESC_STR_LEN);
 ND_PRINT((ndo, "'"));
 cp += DESC_STR_LEN;

 ND_TCHECK2(*cp, SERIAL_NUM_LEN);
 ND_PRINT((ndo, "\n\t  serial_num '"));
 fn_print(ndo, cp, cp + SERIAL_NUM_LEN);
 ND_PRINT((ndo, "'"));
 cp += SERIAL_NUM_LEN;

 ND_TCHECK2(*cp, DESC_STR_LEN);
 ND_PRINT((ndo, "\n\t  dp_desc '"));
 fn_print(ndo, cp, cp + DESC_STR_LEN);
 ND_PRINT((ndo, "'"));
 return cp + DESC_STR_LEN;

invalid:
 ND_PRINT((ndo, "%s", istr));
 ND_TCHECK2(*cp, len);
 return cp + len;
trunc:
 ND_PRINT((ndo, "%s", tstr));
 return ep;
}
