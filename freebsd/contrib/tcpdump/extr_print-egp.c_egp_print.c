
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_int ;
struct egp_packet {scalar_t__ egp_version; int egp_type; int egp_code; int egp_status; int egp_reason; int egp_extgw; int egp_intgw; int egp_sourcenet; int egp_poll; int egp_hello; int egp_sequence; int egp_as; } ;
struct TYPE_6__ {scalar_t__ ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;
 size_t EGPR_UVERSION ;


 int EGPS_DOWN ;





 int EGPS_UNSOL ;






 scalar_t__ EGP_VERSION ;
 size_t EXTRACT_16BITS (int *) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TTEST (struct egp_packet const) ;
 int * egp_acquire_codes ;
 int * egp_acquire_status ;
 int * egp_reach_codes ;
 int * egp_reasons ;
 int * egp_status_updown ;
 int egpnrprint (TYPE_1__*,struct egp_packet const*,int) ;
 int ipaddr_string (TYPE_1__*,int *) ;

void
egp_print(netdissect_options *ndo,
          register const uint8_t *bp, register u_int length)
{
 register const struct egp_packet *egp;
 register int status;
 register int code;
 register int type;

 egp = (const struct egp_packet *)bp;
 if (length < sizeof(*egp) || !ND_TTEST(*egp)) {
  ND_PRINT((ndo, "[|egp]"));
  return;
 }

        if (!ndo->ndo_vflag) {
            ND_PRINT((ndo, "EGPv%u, AS %u, seq %u, length %u",
                   egp->egp_version,
                   EXTRACT_16BITS(&egp->egp_as),
                   EXTRACT_16BITS(&egp->egp_sequence),
                   length));
            return;
        } else
            ND_PRINT((ndo, "EGPv%u, length %u",
                   egp->egp_version,
                   length));

 if (egp->egp_version != EGP_VERSION) {
  ND_PRINT((ndo, "[version %d]", egp->egp_version));
  return;
 }

 type = egp->egp_type;
 code = egp->egp_code;
 status = egp->egp_status;

 switch (type) {
 case 132:
  ND_PRINT((ndo, " acquire"));
  switch (code) {
  case 141:
  case 145:
   ND_PRINT((ndo, " %s", egp_acquire_codes[code]));
   switch (status) {
   case 133:
   case 140:
   case 135:
    ND_PRINT((ndo, " %s", egp_acquire_status[status]));
    break;

   default:
    ND_PRINT((ndo, " [status %d]", status));
    break;
   }
   ND_PRINT((ndo, " hello:%d poll:%d",
          EXTRACT_16BITS(&egp->egp_hello),
          EXTRACT_16BITS(&egp->egp_poll)));
   break;

  case 142:
  case 147:
  case 146:
   ND_PRINT((ndo, " %s", egp_acquire_codes[code]));
   switch (status ) {
   case 133:
   case 137:
   case 139:
   case 138:
   case 136:
   case 134:
    ND_PRINT((ndo, " %s", egp_acquire_status[status]));
    break;

   default:
    ND_PRINT((ndo, "[status %d]", status));
    break;
   }
   break;

  default:
   ND_PRINT((ndo, "[code %d]", code));
   break;
  }
  break;

 case 129:
  switch (code) {

  case 143:
  case 144:
   ND_PRINT((ndo, " %s", egp_reach_codes[code]));
   if (status <= EGPS_DOWN)
    ND_PRINT((ndo, " state:%s", egp_status_updown[status]));
   else
    ND_PRINT((ndo, " [status %d]", status));
   break;

  default:
   ND_PRINT((ndo, "[reach code %d]", code));
   break;
  }
  break;

 case 130:
  ND_PRINT((ndo, " poll"));
  if (egp->egp_status <= EGPS_DOWN)
   ND_PRINT((ndo, " state:%s", egp_status_updown[status]));
  else
   ND_PRINT((ndo, " [status %d]", status));
  ND_PRINT((ndo, " net:%s", ipaddr_string(ndo, &egp->egp_sourcenet)));
  break;

 case 128:
  ND_PRINT((ndo, " update"));
  if (status & EGPS_UNSOL) {
   status &= ~EGPS_UNSOL;
   ND_PRINT((ndo, " unsolicited"));
  }
  if (status <= EGPS_DOWN)
   ND_PRINT((ndo, " state:%s", egp_status_updown[status]));
  else
   ND_PRINT((ndo, " [status %d]", status));
  ND_PRINT((ndo, " %s int %d ext %d",
         ipaddr_string(ndo, &egp->egp_sourcenet),
         egp->egp_intgw,
         egp->egp_extgw));
  if (ndo->ndo_vflag)
   egpnrprint(ndo, egp, length);
  break;

 case 131:
  ND_PRINT((ndo, " error"));
  if (status <= EGPS_DOWN)
   ND_PRINT((ndo, " state:%s", egp_status_updown[status]));
  else
   ND_PRINT((ndo, " [status %d]", status));

  if (EXTRACT_16BITS(&egp->egp_reason) <= EGPR_UVERSION)
   ND_PRINT((ndo, " %s", egp_reasons[EXTRACT_16BITS(&egp->egp_reason)]));
  else
   ND_PRINT((ndo, " [reason %d]", EXTRACT_16BITS(&egp->egp_reason)));
  break;

 default:
  ND_PRINT((ndo, "[type %d]", type));
  break;
 }
}
