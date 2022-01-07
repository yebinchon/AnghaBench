
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_int ;
typedef int u_char ;
struct TYPE_9__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int AOEV1_CMD_ISSUE_ATA_COMMAND ;
 int AOEV1_CMD_MAC_MASK_LIST ;
 int AOEV1_CMD_QUERY_CONFIG_INFORMATION ;
 int AOEV1_CMD_RESERVE_RELEASE ;
 int const AOEV1_COMMON_HDR_LEN ;
 int AOEV1_FLAG_E ;
 int EXTRACT_16BITS (int const*) ;
 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,int) ;
 int aoev1_errcode_str ;
 int aoev1_flag_str ;
 void aoev1_issue_print (TYPE_1__*,int const*,int const) ;
 void aoev1_mac_print (TYPE_1__*,int const*,int const) ;
 void aoev1_query_print (TYPE_1__*,int const*,int const) ;
 void aoev1_reserve_print (TYPE_1__*,int const*,int const) ;
 int bittok2str (int ,char*,int) ;
 int cmdcode_str ;
 int istr ;
 int tok2str (int ,char*,int const) ;
 int tstr ;

__attribute__((used)) static void
aoev1_print(netdissect_options *ndo,
            const u_char *cp, const u_int len)
{
 const u_char *ep = cp + len;
 uint8_t flags, command;
 void (*cmd_decoder)(netdissect_options *, const u_char *, const u_int);

 if (len < AOEV1_COMMON_HDR_LEN)
  goto invalid;

 flags = *cp & 0x0F;
 ND_PRINT((ndo, ", Flags: [%s]", bittok2str(aoev1_flag_str, "none", flags)));
 cp += 1;
 if (! ndo->ndo_vflag)
  return;

 ND_TCHECK2(*cp, 1);
 if (flags & AOEV1_FLAG_E)
  ND_PRINT((ndo, "\n\tError: %s", tok2str(aoev1_errcode_str, "Invalid (%u)", *cp)));
 cp += 1;

 ND_TCHECK2(*cp, 2);
 ND_PRINT((ndo, "\n\tMajor: 0x%04x", EXTRACT_16BITS(cp)));
 cp += 2;

 ND_TCHECK2(*cp, 1);
 ND_PRINT((ndo, ", Minor: 0x%02x", *cp));
 cp += 1;

 ND_TCHECK2(*cp, 1);
 command = *cp;
 cp += 1;
 ND_PRINT((ndo, ", Command: %s", tok2str(cmdcode_str, "Unknown (0x%02x)", command)));

 ND_TCHECK2(*cp, 4);
 ND_PRINT((ndo, ", Tag: 0x%08x", EXTRACT_32BITS(cp)));
 cp += 4;

 cmd_decoder =
  command == AOEV1_CMD_ISSUE_ATA_COMMAND ? aoev1_issue_print :
  command == AOEV1_CMD_QUERY_CONFIG_INFORMATION ? aoev1_query_print :
  command == AOEV1_CMD_MAC_MASK_LIST ? aoev1_mac_print :
  command == AOEV1_CMD_RESERVE_RELEASE ? aoev1_reserve_print :
  ((void*)0);
 if (cmd_decoder != ((void*)0))
  cmd_decoder(ndo, cp, len - AOEV1_COMMON_HDR_LEN);
 return;

invalid:
 ND_PRINT((ndo, "%s", istr));
 ND_TCHECK2(*cp, ep - cp);
 return;
trunc:
 ND_PRINT((ndo, "%s", tstr));
}
