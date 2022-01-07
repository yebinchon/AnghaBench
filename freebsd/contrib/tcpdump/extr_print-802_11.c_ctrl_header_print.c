
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_char ;
struct ctrl_rts_hdr_t {int ta; int ra; } ;
struct ctrl_ps_poll_hdr_t {int ta; int bssid; } ;
struct ctrl_end_hdr_t {int bssid; int ra; } ;
struct ctrl_end_ack_hdr_t {int bssid; int ra; } ;
struct ctrl_cts_hdr_t {int ra; } ;
struct ctrl_bar_hdr_t {int seq; int ctl; int ta; int ra; } ;
struct ctrl_ba_hdr_t {int ra; } ;
struct ctrl_ack_hdr_t {int ra; } ;
typedef int netdissect_options ;
 int EXTRACT_LE_16BITS (int *) ;
 int FC_SUBTYPE (int ) ;
 int ND_PRINT (int *) ;
 int etheraddr_string (int *,int ) ;

__attribute__((used)) static void
ctrl_header_print(netdissect_options *ndo, uint16_t fc, const u_char *p)
{
 switch (FC_SUBTYPE(fc)) {
 case 133:
  ND_PRINT((ndo, " RA:%s TA:%s CTL(%x) SEQ(%u) ",
      etheraddr_string(ndo, ((const struct ctrl_bar_hdr_t *)p)->ra),
      etheraddr_string(ndo, ((const struct ctrl_bar_hdr_t *)p)->ta),
      EXTRACT_LE_16BITS(&(((const struct ctrl_bar_hdr_t *)p)->ctl)),
      EXTRACT_LE_16BITS(&(((const struct ctrl_bar_hdr_t *)p)->seq))));
  break;
 case 134:
  ND_PRINT((ndo, "RA:%s ",
      etheraddr_string(ndo, ((const struct ctrl_ba_hdr_t *)p)->ra)));
  break;
 case 129:
  ND_PRINT((ndo, "BSSID:%s TA:%s ",
      etheraddr_string(ndo, ((const struct ctrl_ps_poll_hdr_t *)p)->bssid),
      etheraddr_string(ndo, ((const struct ctrl_ps_poll_hdr_t *)p)->ta)));
  break;
 case 128:
  ND_PRINT((ndo, "RA:%s TA:%s ",
      etheraddr_string(ndo, ((const struct ctrl_rts_hdr_t *)p)->ra),
      etheraddr_string(ndo, ((const struct ctrl_rts_hdr_t *)p)->ta)));
  break;
 case 131:
  ND_PRINT((ndo, "RA:%s ",
      etheraddr_string(ndo, ((const struct ctrl_cts_hdr_t *)p)->ra)));
  break;
 case 135:
  ND_PRINT((ndo, "RA:%s ",
      etheraddr_string(ndo, ((const struct ctrl_ack_hdr_t *)p)->ra)));
  break;
 case 132:
  ND_PRINT((ndo, "RA:%s BSSID:%s ",
      etheraddr_string(ndo, ((const struct ctrl_end_hdr_t *)p)->ra),
      etheraddr_string(ndo, ((const struct ctrl_end_hdr_t *)p)->bssid)));
  break;
 case 130:
  ND_PRINT((ndo, "RA:%s BSSID:%s ",
      etheraddr_string(ndo, ((const struct ctrl_end_ack_hdr_t *)p)->ra),
      etheraddr_string(ndo, ((const struct ctrl_end_ack_hdr_t *)p)->bssid)));
  break;
 default:

  break;
 }
}
