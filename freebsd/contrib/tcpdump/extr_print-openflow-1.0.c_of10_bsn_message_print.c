
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
 int bsn_onoff_str ;
 int bsn_subtype_str ;
 int fn_printn (int *,int const*,int const,int const*) ;
 int ipaddr_string (int *,int const*) ;
 int istr ;
 int tok2str (int ,char*,int const) ;
 int tstr ;

__attribute__((used)) static const u_char *
of10_bsn_message_print(netdissect_options *ndo,
                       const u_char *cp, const u_char *ep, const u_int len)
{
 const u_char *cp0 = cp;
 uint32_t subtype;

 if (len < 4)
  goto invalid;

 ND_TCHECK2(*cp, 4);
 subtype = EXTRACT_32BITS(cp);
 cp += 4;
 ND_PRINT((ndo, "\n\t subtype %s", tok2str(bsn_subtype_str, "unknown (0x%08x)", subtype)));
 switch (subtype) {
 case 138:
  if (len != 12)
   goto invalid;

  ND_TCHECK2(*cp, 1);
  ND_PRINT((ndo, ", index %u", *cp));
  cp += 1;

  ND_TCHECK2(*cp, 7);
  cp += 7;
  break;
 case 133:
 case 139:
  if (len != 12)
   goto invalid;

  ND_TCHECK2(*cp, 1);
  ND_PRINT((ndo, ", index %u", *cp));
  cp += 1;

  ND_TCHECK2(*cp, 3);
  cp += 3;

  ND_TCHECK2(*cp, 4);
  ND_PRINT((ndo, ", mask %s", ipaddr_string(ndo, cp)));
  cp += 4;
  break;
 case 132:
 case 135:
 case 136:
  if (len != 8)
   goto invalid;

  ND_TCHECK2(*cp, 1);
  ND_PRINT((ndo, ", report_mirror_ports %s", tok2str(bsn_onoff_str, "bogus (%u)", *cp)));
  cp += 1;

  ND_TCHECK2(*cp, 3);
  cp += 3;
  break;
 case 140:
 case 137:
 case 141:
 case 142:
 case 134:
  if (len != 4)
   goto invalid;
  break;
 case 128:
  if (len != 8)
   goto invalid;

  ND_TCHECK2(*cp, 4);
  ND_PRINT((ndo, ", vport_no %u", EXTRACT_32BITS(cp)));
  cp += 4;
  break;
 case 131:
  if (len < 8)
   goto invalid;

  ND_TCHECK2(*cp, 4);
  ND_PRINT((ndo, ", service %u", EXTRACT_32BITS(cp)));
  cp += 4;

  ND_PRINT((ndo, ", data '"));
  if (fn_printn(ndo, cp, len - 8, ep)) {
   ND_PRINT((ndo, "'"));
   goto trunc;
  }
  ND_PRINT((ndo, "'"));
  cp += len - 8;
  break;
 case 130:
  ND_PRINT((ndo, ", data '"));
  if (fn_printn(ndo, cp, len - 4, ep)) {
   ND_PRINT((ndo, "'"));
   goto trunc;
  }
  ND_PRINT((ndo, "'"));
  cp += len - 4;
  break;
 case 129:
  if (len != 8)
   goto invalid;

  ND_TCHECK2(*cp, 4);
  ND_PRINT((ndo, ", status 0x%08x", EXTRACT_32BITS(cp)));
  cp += 4;
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
