
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int ADDR1 ;
 int ADDR2 ;
 int ADDR3 ;
 int ADDR4 ;
 scalar_t__ DATA_FRAME_IS_CF_ACK (int ) ;
 scalar_t__ DATA_FRAME_IS_CF_POLL (int ) ;
 scalar_t__ DATA_FRAME_IS_QOS (int ) ;
 scalar_t__ FC_FROM_DS (int ) ;
 int FC_SUBTYPE (int ) ;
 scalar_t__ FC_TO_DS (int ) ;
 int ND_PRINT (int *) ;
 int etheraddr_string (int *,int ) ;

__attribute__((used)) static void
data_header_print(netdissect_options *ndo, uint16_t fc, const u_char *p)
{
 u_int subtype = FC_SUBTYPE(fc);

 if (DATA_FRAME_IS_CF_ACK(subtype) || DATA_FRAME_IS_CF_POLL(subtype) ||
     DATA_FRAME_IS_QOS(subtype)) {
  ND_PRINT((ndo, "CF "));
  if (DATA_FRAME_IS_CF_ACK(subtype)) {
   if (DATA_FRAME_IS_CF_POLL(subtype))
    ND_PRINT((ndo, "Ack/Poll"));
   else
    ND_PRINT((ndo, "Ack"));
  } else {
   if (DATA_FRAME_IS_CF_POLL(subtype))
    ND_PRINT((ndo, "Poll"));
  }
  if (DATA_FRAME_IS_QOS(subtype))
   ND_PRINT((ndo, "+QoS"));
  ND_PRINT((ndo, " "));
 }






 if (!FC_TO_DS(fc) && !FC_FROM_DS(fc)) {
  ND_PRINT((ndo, "DA:%s SA:%s BSSID:%s ",
      etheraddr_string(ndo, (p + 4)), etheraddr_string(ndo, (p + 10)),
      etheraddr_string(ndo, (p + 16))));
 } else if (!FC_TO_DS(fc) && FC_FROM_DS(fc)) {
  ND_PRINT((ndo, "DA:%s BSSID:%s SA:%s ",
      etheraddr_string(ndo, (p + 4)), etheraddr_string(ndo, (p + 10)),
      etheraddr_string(ndo, (p + 16))));
 } else if (FC_TO_DS(fc) && !FC_FROM_DS(fc)) {
  ND_PRINT((ndo, "BSSID:%s SA:%s DA:%s ",
      etheraddr_string(ndo, (p + 4)), etheraddr_string(ndo, (p + 10)),
      etheraddr_string(ndo, (p + 16))));
 } else if (FC_TO_DS(fc) && FC_FROM_DS(fc)) {
  ND_PRINT((ndo, "RA:%s TA:%s DA:%s SA:%s ",
      etheraddr_string(ndo, (p + 4)), etheraddr_string(ndo, (p + 10)),
      etheraddr_string(ndo, (p + 16)), etheraddr_string(ndo, (p + 24))));
 }





}
