
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
struct TYPE_17__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int const EXTRACT_16BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,int const) ;
 int const OF_ERROR_MSG_LEN ;
 int const OF_FLOW_MOD_LEN ;
 int const OF_FLOW_REMOVED_LEN ;
 int const OF_HEADER_LEN ;
 int OF_PACKET_IN_LEN ;
 int const OF_PACKET_OUT_LEN ;
 int OF_PHY_PORT_LEN ;
 int const OF_PORT_MOD_LEN ;
 int const OF_PORT_STATUS_LEN ;
 int const OF_QUEUE_GET_CONFIG_REPLY_LEN ;
 int const OF_QUEUE_GET_CONFIG_REQUEST_LEN ;
 int const OF_STATS_REPLY_LEN ;
 int const OF_STATS_REQUEST_LEN ;
 int const OF_SWITCH_CONFIG_LEN ;
 int const OF_SWITCH_FEATURES_LEN ;
 int const OF_VENDOR_HEADER_LEN ;
 int istr ;
 int const* of10_data_print (TYPE_1__*,int const*,int const*,int const) ;
 int const* of10_error_print (TYPE_1__*,int const*,int const*,int const) ;
 int const* of10_features_reply_print (TYPE_1__*,int const*,int const*,int const) ;
 int const* of10_flow_mod_print (TYPE_1__*,int const*,int const*,int const) ;
 int const* of10_flow_removed_print (TYPE_1__*,int const*,int const*) ;
 int const* of10_packet_in_print (TYPE_1__*,int const*,int const*,int const) ;
 int const* of10_packet_out_print (TYPE_1__*,int const*,int const*,int const) ;
 int const* of10_phy_ports_print (TYPE_1__*,int const*,int const*,int ) ;
 int const* of10_port_mod_print (TYPE_1__*,int const*,int const*) ;
 int const* of10_queues_print (TYPE_1__*,int const*,int const*,int const) ;
 int const* of10_stats_reply_print (TYPE_1__*,int const*,int const*,int const) ;
 int const* of10_stats_request_print (TYPE_1__*,int const*,int const*,int const) ;
 int const* of10_vendor_message_print (TYPE_1__*,int const*,int const*,int const) ;
 int ofp_config_str ;
 int ofpp_str ;
 int ofppr_str ;
 int ofpt_str ;
 int tok2str (int ,char*,int const) ;
 int tstr ;

const u_char *
of10_header_body_print(netdissect_options *ndo,
                       const u_char *cp, const u_char *ep, const uint8_t type,
                       const uint16_t len, const uint32_t xid)
{
 const u_char *cp0 = cp;
 const u_int len0 = len;
 ND_PRINT((ndo, "\n\tversion 1.0, type %s, length %u, xid 0x%08x",
        tok2str(ofpt_str, "invalid (0x%02x)", type), len, xid));
 switch (type) {

 case 143:
 case 139:
 case 148:
 case 149:
  if (len != OF_HEADER_LEN)
   goto invalid;
  break;


 case 131:
 case 140:
  if (len != OF_SWITCH_CONFIG_LEN)
   goto invalid;
  if (ndo->ndo_vflag < 1)
   goto next_message;

  ND_TCHECK2(*cp, 2);
  ND_PRINT((ndo, "\n\t flags %s", tok2str(ofp_config_str, "invalid (0x%04x)", EXTRACT_16BITS(cp))));
  cp += 2;

  ND_TCHECK2(*cp, 2);
  ND_PRINT((ndo, ", miss_send_len %u", EXTRACT_16BITS(cp)));
  return cp + 2;
 case 135:
  if (len != OF_PORT_MOD_LEN)
   goto invalid;
  if (ndo->ndo_vflag < 1)
   goto next_message;
  return of10_port_mod_print(ndo, cp, ep);
 case 132:
  if (len != OF_QUEUE_GET_CONFIG_REQUEST_LEN)
   goto invalid;
  if (ndo->ndo_vflag < 1)
   goto next_message;

  ND_TCHECK2(*cp, 2);
  ND_PRINT((ndo, "\n\t port_no %s", tok2str(ofpp_str, "%u", EXTRACT_16BITS(cp))));
  cp += 2;

  ND_TCHECK2(*cp, 2);
  return cp + 2;
 case 141:
  if (len != OF_FLOW_REMOVED_LEN)
   goto invalid;
  if (ndo->ndo_vflag < 1)
   goto next_message;
  return of10_flow_removed_print(ndo, cp, ep);
 case 134:
  if (len != OF_PORT_STATUS_LEN)
   goto invalid;
  if (ndo->ndo_vflag < 1)
   goto next_message;

  ND_TCHECK2(*cp, 1);
  ND_PRINT((ndo, "\n\t reason %s", tok2str(ofppr_str, "invalid (0x%02x)", *cp)));
  cp += 1;

  ND_TCHECK2(*cp, 7);
  cp += 7;

  return of10_phy_ports_print(ndo, cp, ep, OF_PHY_PORT_LEN);


 case 144:
  if (len < OF_SWITCH_FEATURES_LEN)
   goto invalid;
  if (ndo->ndo_vflag < 1)
   goto next_message;
  return of10_features_reply_print(ndo, cp, ep, len);


 case 138:
 case 146:
 case 147:
  if (ndo->ndo_vflag < 1)
   goto next_message;
  return of10_data_print(ndo, cp, ep, len - OF_HEADER_LEN);


 case 145:
  if (len < OF_ERROR_MSG_LEN)
   goto invalid;
  if (ndo->ndo_vflag < 1)
   goto next_message;
  return of10_error_print(ndo, cp, ep, len);
 case 128:

  if (len < OF_VENDOR_HEADER_LEN)
   goto invalid;
  if (ndo->ndo_vflag < 1)
   goto next_message;
  return of10_vendor_message_print(ndo, cp, ep, len - OF_HEADER_LEN);
 case 137:

  if (len < OF_PACKET_IN_LEN - 2)
   goto invalid;
  if (ndo->ndo_vflag < 1)
   goto next_message;
  return of10_packet_in_print(ndo, cp, ep, len);




 case 129:
  if (len < OF_STATS_REQUEST_LEN)
   goto invalid;
  if (ndo->ndo_vflag < 1)
   goto next_message;
  return of10_stats_request_print(ndo, cp, ep, len);





 case 130:
  if (len < OF_STATS_REPLY_LEN)
   goto invalid;
  if (ndo->ndo_vflag < 1)
   goto next_message;
  return of10_stats_reply_print(ndo, cp, ep, len);


 case 136:
  if (len < OF_PACKET_OUT_LEN)
   goto invalid;
  if (ndo->ndo_vflag < 1)
   goto next_message;
  return of10_packet_out_print(ndo, cp, ep, len);


 case 142:
  if (len < OF_FLOW_MOD_LEN)
   goto invalid;
  if (ndo->ndo_vflag < 1)
   goto next_message;
  return of10_flow_mod_print(ndo, cp, ep, len);


 case 133:
  if (len < OF_QUEUE_GET_CONFIG_REPLY_LEN)
   goto invalid;
  if (ndo->ndo_vflag < 1)
   goto next_message;

  ND_TCHECK2(*cp, 2);
  ND_PRINT((ndo, "\n\t port_no %s", tok2str(ofpp_str, "%u", EXTRACT_16BITS(cp))));
  cp += 2;

  ND_TCHECK2(*cp, 6);
  cp += 6;

  return of10_queues_print(ndo, cp, ep, len - OF_QUEUE_GET_CONFIG_REPLY_LEN);
 }
 goto next_message;

invalid:
 ND_PRINT((ndo, "%s", istr));
next_message:
 ND_TCHECK2(*cp0, len0 - OF_HEADER_LEN);
 return cp0 + len0 - OF_HEADER_LEN;
trunc:
 ND_PRINT((ndo, "%s", tstr));
 return ep;
}
