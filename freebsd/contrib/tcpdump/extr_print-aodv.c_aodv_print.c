
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (int const) ;
 int aodv_rerr (int *,int const*,int ) ;
 int aodv_rrep (int *,int const*,int ) ;
 int aodv_rreq (int *,int const*,int ) ;
 int aodv_v6_draft_01_rerr (int *,int const*,int ) ;
 int aodv_v6_draft_01_rrep (int *,int const*,int ) ;
 int aodv_v6_draft_01_rreq (int *,int const*,int ) ;
 int aodv_v6_rerr (int *,int const*,int ) ;
 int aodv_v6_rrep (int *,int const*,int ) ;
 int aodv_v6_rreq (int *,int const*,int ) ;

void
aodv_print(netdissect_options *ndo,
           const u_char *dat, u_int length, int is_ip6)
{
 uint8_t msg_type;





 ND_TCHECK(*dat);
 msg_type = *dat;
 ND_PRINT((ndo, " aodv"));

 switch (msg_type) {

 case 132:
  if (is_ip6)
   aodv_v6_rreq(ndo, dat, length);
  else
   aodv_rreq(ndo, dat, length);
  break;

 case 134:
  if (is_ip6)
   aodv_v6_rrep(ndo, dat, length);
  else
   aodv_rrep(ndo, dat, length);
  break;

 case 135:
  if (is_ip6)
   aodv_v6_rerr(ndo, dat, length);
  else
   aodv_rerr(ndo, dat, length);
  break;

 case 133:
  ND_PRINT((ndo, " rrep-ack %u", length));
  break;

 case 128:
  aodv_v6_draft_01_rreq(ndo, dat, length);
  break;

 case 130:
  aodv_v6_draft_01_rrep(ndo, dat, length);
  break;

 case 131:
  aodv_v6_draft_01_rerr(ndo, dat, length);
  break;

 case 129:
  ND_PRINT((ndo, " rrep-ack %u", length));
  break;

 default:
  ND_PRINT((ndo, " type %u %u", msg_type, length));
 }
 return;

trunc:
 ND_PRINT((ndo, " [|aodv]"));
}
