
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_short ;
typedef int u_int ;
typedef int u_char ;
struct arp_pkthdr {int dummy; } ;
struct TYPE_8__ {scalar_t__ ndo_vflag; int ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;
 int ETHERTYPE_IP ;
 int ETHERTYPE_TRAIL ;
 int HRD (struct arp_pkthdr const*) ;
 scalar_t__ HRD_LEN (struct arp_pkthdr const*) ;
 int LINKADDR_ETHER ;
 int LINKADDR_FRELAY ;
 int ND_DEFAULTPRINT (int const*,int ) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (struct arp_pkthdr const) ;
 int ND_TTEST2 (int ,int) ;
 int OP (struct arp_pkthdr const*) ;
 int PRO (struct arp_pkthdr const*) ;
 int PROTO_LEN (struct arp_pkthdr const*) ;
 scalar_t__ SHA (struct arp_pkthdr const*) ;
 scalar_t__ THA (struct arp_pkthdr const*) ;
 int * TPA (struct arp_pkthdr const*) ;
 int arphrd_values ;
 int arpop_values ;
 int atmarp_print (TYPE_1__*,int const*,int ,int ) ;
 int ethertype_values ;
 int isnonzero (int const*,scalar_t__) ;
 int linkaddr_string (TYPE_1__*,scalar_t__,int,scalar_t__) ;
 int spaddr_print_ip (TYPE_1__*,struct arp_pkthdr const*,int) ;
 int tok2str (int ,char*,int) ;
 int tpaddr_print_ip (TYPE_1__*,struct arp_pkthdr const*,int) ;
 int tstr ;

void
arp_print(netdissect_options *ndo,
   const u_char *bp, u_int length, u_int caplen)
{
 const struct arp_pkthdr *ap;
 u_short pro, hrd, op, linkaddr;

 ap = (const struct arp_pkthdr *)bp;
 ND_TCHECK(*ap);

 hrd = HRD(ap);
 pro = PRO(ap);
 op = OP(ap);







        switch(hrd) {
        case 135:
            atmarp_print(ndo, bp, length, caplen);
            return;
        case 134:
            linkaddr = LINKADDR_FRELAY;
            break;
        default:
            linkaddr = LINKADDR_ETHER;
            break;
 }

 if (!ND_TTEST2(*TPA(ap), PROTO_LEN(ap))) {
  ND_PRINT((ndo, "%s", tstr));
  ND_DEFAULTPRINT((const u_char *)ap, length);
  return;
 }

        if (!ndo->ndo_eflag) {
            ND_PRINT((ndo, "ARP, "));
        }


        if ((pro != ETHERTYPE_IP && pro != ETHERTYPE_TRAIL) ||
     PROTO_LEN(ap) != 4 ||
            HRD_LEN(ap) == 0 ||
            ndo->ndo_vflag) {
            ND_PRINT((ndo, "%s (len %u), %s (len %u)",
                      tok2str(arphrd_values, "Unknown Hardware (%u)", hrd),
                      HRD_LEN(ap),
                      tok2str(ethertype_values, "Unknown Protocol (0x%04x)", pro),
                      PROTO_LEN(ap)));


            if (!ndo->ndo_vflag) {
                goto out;
            }
 }


        ND_PRINT((ndo, "%s%s ",
               ndo->ndo_vflag ? ", " : "",
               tok2str(arpop_values, "Unknown (%u)", op)));

 switch (op) {

 case 130:
  ND_PRINT((ndo, "who-has "));
  tpaddr_print_ip(ndo, ap, pro);
  if (isnonzero((const u_char *)THA(ap), HRD_LEN(ap)))
   ND_PRINT((ndo, " (%s)",
      linkaddr_string(ndo, THA(ap), linkaddr, HRD_LEN(ap))));
  ND_PRINT((ndo, " tell "));
  spaddr_print_ip(ndo, ap, pro);
  break;

 case 131:
  spaddr_print_ip(ndo, ap, pro);
  ND_PRINT((ndo, " is-at %s",
                          linkaddr_string(ndo, SHA(ap), linkaddr, HRD_LEN(ap))));
  break;

 case 128:
  ND_PRINT((ndo, "who-is %s tell %s",
     linkaddr_string(ndo, THA(ap), linkaddr, HRD_LEN(ap)),
     linkaddr_string(ndo, SHA(ap), linkaddr, HRD_LEN(ap))));
  break;

 case 129:
  ND_PRINT((ndo, "%s at ",
     linkaddr_string(ndo, THA(ap), linkaddr, HRD_LEN(ap))));
  tpaddr_print_ip(ndo, ap, pro);
  break;

 case 132:
  ND_PRINT((ndo, "who-is %s tell %s",
     linkaddr_string(ndo, THA(ap), linkaddr, HRD_LEN(ap)),
     linkaddr_string(ndo, SHA(ap), linkaddr, HRD_LEN(ap))));
  break;

 case 133:
  ND_PRINT((ndo,"%s at ",
     linkaddr_string(ndo, SHA(ap), linkaddr, HRD_LEN(ap))));
  spaddr_print_ip(ndo, ap, pro);
  break;

 default:
  ND_DEFAULTPRINT((const u_char *)ap, caplen);
  return;
 }

 out:
        ND_PRINT((ndo, ", length %u", length));

 return;
trunc:
 ND_PRINT((ndo, "%s", tstr));
}
