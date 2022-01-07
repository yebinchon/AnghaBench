
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;




 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int const) ;
 int bsn_action_subtype_str ;
 int bsn_mirror_copy_stage_str ;
 int ieee8021q_tci_string (int) ;
 int istr ;
 int tok2str (int ,char*,int const) ;
 int tstr ;

__attribute__((used)) static const u_char *
of10_bsn_actions_print(netdissect_options *ndo,
                       const u_char *cp, const u_char *ep, const u_int len)
{
 const u_char *cp0 = cp;
 uint32_t subtype, vlan_tag;

 if (len < 4)
  goto invalid;

 ND_TCHECK2(*cp, 4);
 subtype = EXTRACT_32BITS(cp);
 cp += 4;
 ND_PRINT((ndo, "\n\t  subtype %s", tok2str(bsn_action_subtype_str, "unknown (0x%08x)", subtype)));
 switch (subtype) {
 case 129:
  if (len != 16)
   goto invalid;

  ND_TCHECK2(*cp, 4);
  ND_PRINT((ndo, ", dest_port %u", EXTRACT_32BITS(cp)));
  cp += 4;

  ND_TCHECK2(*cp, 4);
  vlan_tag = EXTRACT_32BITS(cp);
  cp += 4;
  switch (vlan_tag >> 16) {
  case 0:
   ND_PRINT((ndo, ", vlan_tag none"));
   break;
  case 128:
   ND_PRINT((ndo, ", vlan_tag 802.1Q (%s)", ieee8021q_tci_string(vlan_tag & 0xffff)));
   break;
  default:
   ND_PRINT((ndo, ", vlan_tag unknown (0x%04x)", vlan_tag >> 16));
  }

  ND_TCHECK2(*cp, 1);
  ND_PRINT((ndo, ", copy_stage %s", tok2str(bsn_mirror_copy_stage_str, "unknown (%u)", *cp)));
  cp += 1;

  ND_TCHECK2(*cp, 3);
  cp += 3;
  break;
 default:
  ND_TCHECK2(*cp, len - 4);
  cp += len - 4;
 }

 return cp;

invalid:
 ND_PRINT((ndo, "%s", istr));
 ND_TCHECK2(*cp0, len);
 return cp0 + len;
trunc:
 ND_PRINT((ndo, "%s", tstr));
 return ep;
}
