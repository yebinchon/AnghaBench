
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef size_t uint16_t ;
typedef int u_char ;
struct pptp_hdr {int reserved0; int ctrl_msg_type; int magic_cookie; int msg_type; int length; } ;
struct TYPE_19__ {scalar_t__ ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int *) ;
 scalar_t__ EXTRACT_32BITS (int *) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int ) ;
 scalar_t__ PPTP_MAGIC_COOKIE ;
 size_t PPTP_MAX_MSGTYPE_INDEX ;


 int pptp_ccrq_print (TYPE_1__*,int const*) ;
 int pptp_cdn_print (TYPE_1__*,int const*) ;
 int pptp_echorp_print (TYPE_1__*,int const*) ;
 int pptp_echorq_print (TYPE_1__*,int const*) ;
 int pptp_iccn_print (TYPE_1__*,int const*) ;
 int pptp_icrp_print (TYPE_1__*,int const*) ;
 int pptp_icrq_print (TYPE_1__*,int const*) ;
 int * pptp_message_type_string ;
 int pptp_ocrp_print (TYPE_1__*,int const*) ;
 int pptp_ocrq_print (TYPE_1__*,int const*) ;
 int pptp_sccrp_print (TYPE_1__*,int const*) ;
 int pptp_sccrq_print (TYPE_1__*,int const*) ;
 int pptp_sli_print (TYPE_1__*,int const*) ;
 int pptp_stopccrp_print (TYPE_1__*,int const*) ;
 int pptp_stopccrq_print (TYPE_1__*,int const*) ;
 int pptp_wen_print (TYPE_1__*,int const*) ;
 int tstr ;

void
pptp_print(netdissect_options *ndo,
           const u_char *dat)
{
 const struct pptp_hdr *hdr;
 uint32_t mc;
 uint16_t ctrl_msg_type;

 ND_PRINT((ndo, ": pptp"));

 hdr = (const struct pptp_hdr *)dat;

 ND_TCHECK(hdr->length);
 if (ndo->ndo_vflag) {
  ND_PRINT((ndo, " Length=%u", EXTRACT_16BITS(&hdr->length)));
 }
 ND_TCHECK(hdr->msg_type);
 if (ndo->ndo_vflag) {
  switch(EXTRACT_16BITS(&hdr->msg_type)) {
  case 129:
   ND_PRINT((ndo, " CTRL-MSG"));
   break;
  case 128:
   ND_PRINT((ndo, " MGMT-MSG"));
   break;
  default:
   ND_PRINT((ndo, " UNKNOWN-MSG-TYPE"));
   break;
  }
 }

 ND_TCHECK(hdr->magic_cookie);
 mc = EXTRACT_32BITS(&hdr->magic_cookie);
 if (mc != PPTP_MAGIC_COOKIE) {
  ND_PRINT((ndo, " UNEXPECTED Magic-Cookie!!(%08x)", mc));
 }
 if (ndo->ndo_vflag || mc != PPTP_MAGIC_COOKIE) {
  ND_PRINT((ndo, " Magic-Cookie=%08x", mc));
 }
 ND_TCHECK(hdr->ctrl_msg_type);
 ctrl_msg_type = EXTRACT_16BITS(&hdr->ctrl_msg_type);
 if (ctrl_msg_type < PPTP_MAX_MSGTYPE_INDEX) {
  ND_PRINT((ndo, " CTRL_MSGTYPE=%s",
         pptp_message_type_string[ctrl_msg_type]));
 } else {
  ND_PRINT((ndo, " UNKNOWN_CTRL_MSGTYPE(%u)", ctrl_msg_type));
 }
 ND_TCHECK(hdr->reserved0);

 dat += 12;

 switch(ctrl_msg_type) {
 case 134:
  pptp_sccrq_print(ndo, dat);
  break;
 case 135:
  pptp_sccrp_print(ndo, dat);
  break;
 case 131:
  pptp_stopccrq_print(ndo, dat);
  break;
 case 132:
  pptp_stopccrp_print(ndo, dat);
  break;
 case 141:
  pptp_echorq_print(ndo, dat);
  break;
 case 142:
  pptp_echorp_print(ndo, dat);
  break;
 case 136:
  pptp_ocrq_print(ndo, dat);
  break;
 case 137:
  pptp_ocrp_print(ndo, dat);
  break;
 case 138:
  pptp_icrq_print(ndo, dat);
  break;
 case 139:
  pptp_icrp_print(ndo, dat);
  break;
 case 140:
  pptp_iccn_print(ndo, dat);
  break;
 case 144:
  pptp_ccrq_print(ndo, dat);
  break;
 case 143:
  pptp_cdn_print(ndo, dat);
  break;
 case 130:
  pptp_wen_print(ndo, dat);
  break;
 case 133:
  pptp_sli_print(ndo, dat);
  break;
 default:

  break;
 }

 return;

trunc:
 ND_PRINT((ndo, "%s", tstr));
}
