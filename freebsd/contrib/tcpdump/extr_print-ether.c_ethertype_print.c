
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_1__ ;


typedef int u_short ;
typedef int u_int ;
typedef int u_char ;
struct lladdr_info {int dummy; } ;
struct TYPE_28__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;
 int ND_PRINT (TYPE_1__*) ;
 int aarp_print (TYPE_1__*,int const*,int ) ;
 int aoe_print (TYPE_1__*,int const*,int ) ;
 int arp_print (TYPE_1__*,int const*,int ,int ) ;
 int atalk_print (TYPE_1__*,int const*,int ) ;
 int calm_fast_print (TYPE_1__*,int const*,int ,struct lladdr_info const*) ;
 int cfm_print (TYPE_1__*,int const*,int ) ;
 int decnet_print (TYPE_1__*,int const*,int ,int ) ;
 int eap_print (TYPE_1__*,int const*,int ) ;
 int geonet_print (TYPE_1__*,int const*,int ,struct lladdr_info const*) ;
 int ip6_print (TYPE_1__*,int const*,int ) ;
 int ip_print (TYPE_1__*,int const*,int ) ;
 int ipx_print (TYPE_1__*,int const*,int ) ;
 int isoclns_print (TYPE_1__*,int const*,int ) ;
 int lldp_print (TYPE_1__*,int const*,int ) ;
 int loopback_print (TYPE_1__*,int const*,int ) ;
 int medsa_print (TYPE_1__*,int const*,int ,int ,struct lladdr_info const*,struct lladdr_info const*) ;
 int mpcp_print (TYPE_1__*,int const*,int ) ;
 int mpls_print (TYPE_1__*,int const*,int ) ;
 int msnlb_print (TYPE_1__*,int const*) ;
 int ppp_print (TYPE_1__*,int const*,int ) ;
 int pppoe_print (TYPE_1__*,int const*,int ) ;
 int rrcp_print (TYPE_1__*,int const*,int ,struct lladdr_info const*,struct lladdr_info const*) ;
 int slow_print (TYPE_1__*,int const*,int ) ;
 int tipc_print (TYPE_1__*,int const*,int ,int ) ;

int
ethertype_print(netdissect_options *ndo,
                u_short ether_type, const u_char *p,
                u_int length, u_int caplen,
                const struct lladdr_info *src, const struct lladdr_info *dst)
{
 switch (ether_type) {

 case 151:
         ip_print(ndo, p, length);
  return (1);

 case 150:
  ip6_print(ndo, p, length);
  return (1);

 case 161:
 case 132:
         arp_print(ndo, p, length, caplen);
  return (1);

 case 156:
  decnet_print(ndo, p, length, caplen);
  return (1);

 case 160:
  if (ndo->ndo_vflag)
   ND_PRINT((ndo, "et1 "));
  atalk_print(ndo, p, length);
  return (1);

 case 163:
  aarp_print(ndo, p, length);
  return (1);

 case 149:
  ND_PRINT((ndo, "(NOV-ETHII) "));
  ipx_print(ndo, p, length);
  return (1);

 case 148:
  if (length == 0 || caplen == 0) {
   ND_PRINT((ndo, " [|osi]"));
   return (1);
  }
  isoclns_print(ndo, p + 1, length - 1);
  return(1);

 case 136:
 case 134:
 case 135:
 case 133:
  pppoe_print(ndo, p, length);
  return (1);

 case 155:
         eap_print(ndo, p, length);
  return (1);

 case 131:
         rrcp_print(ndo, p, length, src, dst);
  return (1);

 case 137:
  if (length) {
   ND_PRINT((ndo, ": "));
   ppp_print(ndo, p, length);
  }
  return (1);

 case 141:
         mpcp_print(ndo, p, length);
  return (1);

 case 129:
         slow_print(ndo, p, length);
  return (1);

 case 158:
 case 157:
  cfm_print(ndo, p, length);
  return (1);

 case 146:
  lldp_print(ndo, p, length);
  return (1);

        case 145:
  loopback_print(ndo, p, length);
                return (1);

 case 140:
 case 139:
  mpls_print(ndo, p, length);
  return (1);

 case 128:
  tipc_print(ndo, p, length, caplen);
  return (1);

 case 138:
  msnlb_print(ndo, p);
  return (1);

        case 153:
        case 154:
                geonet_print(ndo, p, length, src);
                return (1);

        case 159:
                calm_fast_print(ndo, p, length, src);
                return (1);

 case 162:
  aoe_print(ndo, p, length);
  return (1);

 case 144:
  medsa_print(ndo, p, length, caplen, src, dst);
  return (1);

 case 147:
 case 130:
 case 142:
 case 143:
 case 152:

 default:
  return (0);
 }
}
