
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u_char ;
struct ctrl_rts_hdr_t {int ta; } ;
struct ctrl_ps_poll_hdr_t {int aid; } ;
struct ctrl_end_hdr_t {int ra; } ;
struct ctrl_end_ack_hdr_t {int ra; } ;
struct ctrl_cts_hdr_t {int ra; } ;
struct ctrl_bar_hdr_t {int seq; int ctl; int ta; int ra; } ;
struct ctrl_ba_hdr_t {int ra; } ;
struct ctrl_ack_hdr_t {int ra; } ;
struct TYPE_5__ {int ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;



 int CTRL_ACK_HDRLEN ;


 int CTRL_BAR_HDRLEN ;
 int CTRL_BA_HDRLEN ;



 int CTRL_CTS_HDRLEN ;

 int CTRL_END_ACK_HDRLEN ;
 int CTRL_END_HDRLEN ;

 int CTRL_PS_POLL_HDRLEN ;

 int CTRL_RTS_HDRLEN ;
 int EXTRACT_LE_16BITS (int *) ;
 int FC_SUBTYPE (int ) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TTEST2 (int const,int ) ;
 int ctrl_str ;
 int etheraddr_string (TYPE_1__*,int ) ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static int
ctrl_body_print(netdissect_options *ndo,
                uint16_t fc, const u_char *p)
{
 ND_PRINT((ndo, "%s", tok2str(ctrl_str, "Unknown Ctrl Subtype", FC_SUBTYPE(fc))));
 switch (FC_SUBTYPE(fc)) {
 case 132:

  break;
 case 134:
  if (!ND_TTEST2(*p, CTRL_BAR_HDRLEN))
   return 0;
  if (!ndo->ndo_eflag)
   ND_PRINT((ndo, " RA:%s TA:%s CTL(%x) SEQ(%u) ",
       etheraddr_string(ndo, ((const struct ctrl_bar_hdr_t *)p)->ra),
       etheraddr_string(ndo, ((const struct ctrl_bar_hdr_t *)p)->ta),
       EXTRACT_LE_16BITS(&(((const struct ctrl_bar_hdr_t *)p)->ctl)),
       EXTRACT_LE_16BITS(&(((const struct ctrl_bar_hdr_t *)p)->seq))));
  break;
 case 135:
  if (!ND_TTEST2(*p, CTRL_BA_HDRLEN))
   return 0;
  if (!ndo->ndo_eflag)
   ND_PRINT((ndo, " RA:%s ",
       etheraddr_string(ndo, ((const struct ctrl_ba_hdr_t *)p)->ra)));
  break;
 case 129:
  if (!ND_TTEST2(*p, CTRL_PS_POLL_HDRLEN))
   return 0;
  ND_PRINT((ndo, " AID(%x)",
      EXTRACT_LE_16BITS(&(((const struct ctrl_ps_poll_hdr_t *)p)->aid))));
  break;
 case 128:
  if (!ND_TTEST2(*p, CTRL_RTS_HDRLEN))
   return 0;
  if (!ndo->ndo_eflag)
   ND_PRINT((ndo, " TA:%s ",
       etheraddr_string(ndo, ((const struct ctrl_rts_hdr_t *)p)->ta)));
  break;
 case 131:
  if (!ND_TTEST2(*p, CTRL_CTS_HDRLEN))
   return 0;
  if (!ndo->ndo_eflag)
   ND_PRINT((ndo, " RA:%s ",
       etheraddr_string(ndo, ((const struct ctrl_cts_hdr_t *)p)->ra)));
  break;
 case 136:
  if (!ND_TTEST2(*p, CTRL_ACK_HDRLEN))
   return 0;
  if (!ndo->ndo_eflag)
   ND_PRINT((ndo, " RA:%s ",
       etheraddr_string(ndo, ((const struct ctrl_ack_hdr_t *)p)->ra)));
  break;
 case 133:
  if (!ND_TTEST2(*p, CTRL_END_HDRLEN))
   return 0;
  if (!ndo->ndo_eflag)
   ND_PRINT((ndo, " RA:%s ",
       etheraddr_string(ndo, ((const struct ctrl_end_hdr_t *)p)->ra)));
  break;
 case 130:
  if (!ND_TTEST2(*p, CTRL_END_ACK_HDRLEN))
   return 0;
  if (!ndo->ndo_eflag)
   ND_PRINT((ndo, " RA:%s ",
       etheraddr_string(ndo, ((const struct ctrl_end_ack_hdr_t *)p)->ra)));
  break;
 }
 return 1;
}
