
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int const EXTRACT_16BITS (int const*) ;
 int const EXTRACT_32BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int const) ;







 int OF_FLOW_STATS_REQUEST_LEN ;
 int OF_PORT_STATS_REQUEST_LEN ;
 int OF_QUEUE_STATS_REQUEST_LEN ;
 scalar_t__ OF_STATS_REQUEST_LEN ;
 int istr ;
 int* of10_match_print (int *,char*,int const*,int const*) ;
 int const* of10_vendor_data_print (int *,int const*,int const*,int) ;
 int ofpp_str ;
 int ofpq_str ;
 int ofpst_str ;
 int tableid_str ;
 int tok2str (int ,char*,int const) ;
 int tstr ;

__attribute__((used)) static const u_char *
of10_stats_request_print(netdissect_options *ndo,
                         const u_char *cp, const u_char *ep, u_int len)
{
 const u_char *cp0 = cp;
 const u_int len0 = len;
 uint16_t type;


 ND_TCHECK2(*cp, 2);
 type = EXTRACT_16BITS(cp);
 cp += 2;
 ND_PRINT((ndo, "\n\t type %s", tok2str(ofpst_str, "invalid (0x%04x)", type)));

 ND_TCHECK2(*cp, 2);
 ND_PRINT((ndo, ", flags 0x%04x", EXTRACT_16BITS(cp)));
 if (EXTRACT_16BITS(cp))
  ND_PRINT((ndo, " (bogus)"));
 cp += 2;

 len -= OF_STATS_REQUEST_LEN;
 switch(type) {
 case 133:
 case 129:
  if (len)
   goto invalid;
  return cp;
 case 132:
 case 134:
  if (len != OF_FLOW_STATS_REQUEST_LEN)
   goto invalid;

  if (ep == (cp = of10_match_print(ndo, "\n\t ", cp, ep)))
   return ep;

  ND_TCHECK2(*cp, 1);
  ND_PRINT((ndo, "\n\t table_id %s", tok2str(tableid_str, "%u", *cp)));
  cp += 1;

  ND_TCHECK2(*cp, 1);
  cp += 1;

  ND_TCHECK2(*cp, 2);
  ND_PRINT((ndo, ", out_port %s", tok2str(ofpp_str, "%u", EXTRACT_16BITS(cp))));
  return cp + 2;
 case 131:
  if (len != OF_PORT_STATS_REQUEST_LEN)
   goto invalid;

  ND_TCHECK2(*cp, 2);
  ND_PRINT((ndo, "\n\t port_no %s", tok2str(ofpp_str, "%u", EXTRACT_16BITS(cp))));
  cp += 2;

  ND_TCHECK2(*cp, 6);
  return cp + 6;
 case 130:
  if (len != OF_QUEUE_STATS_REQUEST_LEN)
   goto invalid;

  ND_TCHECK2(*cp, 2);
  ND_PRINT((ndo, "\n\t port_no %s", tok2str(ofpp_str, "%u", EXTRACT_16BITS(cp))));
  cp += 2;

  ND_TCHECK2(*cp, 2);
  cp += 2;

  ND_TCHECK2(*cp, 4);
  ND_PRINT((ndo, ", queue_id %s", tok2str(ofpq_str, "%u", EXTRACT_32BITS(cp))));
  return cp + 4;
 case 128:
  return of10_vendor_data_print(ndo, cp, ep, len);
 }
 return cp;

invalid:
 ND_PRINT((ndo, "%s", istr));
 ND_TCHECK2(*cp0, len0);
 return cp0 + len0;
trunc:
 ND_PRINT((ndo, "%s", tstr));
 return ep;
}
