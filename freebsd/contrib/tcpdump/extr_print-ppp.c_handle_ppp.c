
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;





 int ND_PRINT (int *) ;
 int handle_bap (int *,int const*,int) ;
 int handle_chap (int *,int const*,int) ;
 int handle_ctrl_proto (int *,int,int const*,int) ;
 int handle_mlppp (int *,int const*,int) ;
 int handle_pap (int *,int const*,int) ;
 int ip6_print (int *,int const*,int) ;
 int ip_print (int *,int const*,int) ;
 int ipx_print (int *,int const*,int) ;
 int isoclns_print (int *,int const*,int) ;
 int mpls_print (int *,int const*,int) ;
 int ppp_hdlc (int *,int const*,int) ;
 int ppptype2str ;
 int print_unknown_data (int *,int const*,char*,int) ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static void
handle_ppp(netdissect_options *ndo,
           u_int proto, const u_char *p, int length)
{
 if ((proto & 0xff00) == 0x7e00) {
  ppp_hdlc(ndo, p - 1, length);
  return;
 }

 switch (proto) {
 case 136:
 case 140:
 case 130:
 case 134:
 case 138:
 case 144:
 case 146:
  handle_ctrl_proto(ndo, proto, p, length);
  break;
 case 135:
  handle_mlppp(ndo, p, length);
  break;
 case 143:
  handle_chap(ndo, p, length);
  break;
 case 129:
  handle_pap(ndo, p, length);
  break;
 case 145:
  handle_bap(ndo, p, length);
  break;
 case 149:
        case 128:
 case 141:
  ip_print(ndo, p, length);
  break;
 case 148:
 case 139:
  ip6_print(ndo, p, length);
  break;
 case 147:
 case 137:
  ipx_print(ndo, p, length);
  break;
 case 131:
  isoclns_print(ndo, p, length);
  break;
 case 132:
 case 133:
  mpls_print(ndo, p, length);
  break;
 case 142:
  ND_PRINT((ndo, "compressed PPP data"));
  break;
 default:
  ND_PRINT((ndo, "%s ", tok2str(ppptype2str, "unknown PPP protocol (0x%04x)", proto)));
  print_unknown_data(ndo, p, "\n\t", length);
  break;
 }
}
