
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_short ;
typedef int u_int ;
typedef int u_char ;
struct atmarp_pkthdr {int dummy; } ;
struct TYPE_7__ {scalar_t__ ndo_vflag; int ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;







 scalar_t__ ATMHRD (struct atmarp_pkthdr const*) ;
 scalar_t__ ATMOP (struct atmarp_pkthdr const*) ;
 scalar_t__ ATMPRO (struct atmarp_pkthdr const*) ;
 int ATMSHA (struct atmarp_pkthdr const*) ;
 int ATMSHRD_LEN (struct atmarp_pkthdr const*) ;
 int ATMSPROTO_LEN (struct atmarp_pkthdr const*) ;
 int ATMSSA (struct atmarp_pkthdr const*) ;
 int ATMSSLN (struct atmarp_pkthdr const*) ;
 int ATMTHA (struct atmarp_pkthdr const*) ;
 int ATMTHRD_LEN (struct atmarp_pkthdr const*) ;
 int ATMTPROTO_LEN (struct atmarp_pkthdr const*) ;
 int ATMTSA (struct atmarp_pkthdr const*) ;
 int ATMTSLN (struct atmarp_pkthdr const*) ;
 scalar_t__ ETHERTYPE_IP ;
 scalar_t__ ETHERTYPE_TRAIL ;
 int ND_DEFAULTPRINT (int const*,int ) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (struct atmarp_pkthdr const) ;
 int ND_TTEST2 (int ,int) ;
 int * aar_tpa (struct atmarp_pkthdr const*) ;
 int arphrd_values ;
 int arpop_values ;
 int atmarp_addr_print (TYPE_1__*,int ,int ,int ,int ) ;
 int atmarp_spaddr_print (TYPE_1__*,struct atmarp_pkthdr const*,scalar_t__) ;
 int atmarp_tpaddr_print (TYPE_1__*,struct atmarp_pkthdr const*,scalar_t__) ;
 int ethertype_values ;
 int tok2str (int ,char*,scalar_t__) ;
 int tstr ;

__attribute__((used)) static void
atmarp_print(netdissect_options *ndo,
      const u_char *bp, u_int length, u_int caplen)
{
 const struct atmarp_pkthdr *ap;
 u_short pro, hrd, op;

 ap = (const struct atmarp_pkthdr *)bp;
 ND_TCHECK(*ap);

 hrd = ATMHRD(ap);
 pro = ATMPRO(ap);
 op = ATMOP(ap);

 if (!ND_TTEST2(*aar_tpa(ap), ATMTPROTO_LEN(ap))) {
  ND_PRINT((ndo, "%s", tstr));
  ND_DEFAULTPRINT((const u_char *)ap, length);
  return;
 }

        if (!ndo->ndo_eflag) {
            ND_PRINT((ndo, "ARP, "));
        }

 if ((pro != ETHERTYPE_IP && pro != ETHERTYPE_TRAIL) ||
     ATMSPROTO_LEN(ap) != 4 ||
            ATMTPROTO_LEN(ap) != 4 ||
            ndo->ndo_vflag) {
                ND_PRINT((ndo, "%s, %s (len %u/%u)",
                          tok2str(arphrd_values, "Unknown Hardware (%u)", hrd),
                          tok2str(ethertype_values, "Unknown Protocol (0x%04x)", pro),
                          ATMSPROTO_LEN(ap),
                          ATMTPROTO_LEN(ap)));


                if (!ndo->ndo_vflag) {
                    goto out;
                }
 }


        ND_PRINT((ndo, "%s%s ",
               ndo->ndo_vflag ? ", " : "",
               tok2str(arpop_values, "Unknown (%u)", op)));

 switch (op) {

 case 128:
  ND_PRINT((ndo, "who-has "));
  atmarp_tpaddr_print(ndo, ap, pro);
  if (ATMTHRD_LEN(ap) != 0) {
   ND_PRINT((ndo, " ("));
   atmarp_addr_print(ndo, ATMTHA(ap), ATMTHRD_LEN(ap),
       ATMTSA(ap), ATMTSLN(ap));
   ND_PRINT((ndo, ")"));
  }
  ND_PRINT((ndo, " tell "));
  atmarp_spaddr_print(ndo, ap, pro);
  break;

 case 129:
  atmarp_spaddr_print(ndo, ap, pro);
  ND_PRINT((ndo, " is-at "));
  atmarp_addr_print(ndo, ATMSHA(ap), ATMSHRD_LEN(ap), ATMSSA(ap),
                                  ATMSSLN(ap));
  break;

 case 131:
  ND_PRINT((ndo, "who-is "));
  atmarp_addr_print(ndo, ATMTHA(ap), ATMTHRD_LEN(ap), ATMTSA(ap),
      ATMTSLN(ap));
  ND_PRINT((ndo, " tell "));
  atmarp_addr_print(ndo, ATMSHA(ap), ATMSHRD_LEN(ap), ATMSSA(ap),
      ATMSSLN(ap));
  break;

 case 132:
  atmarp_addr_print(ndo, ATMSHA(ap), ATMSHRD_LEN(ap), ATMSSA(ap),
      ATMSSLN(ap));
  ND_PRINT((ndo, "at "));
  atmarp_spaddr_print(ndo, ap, pro);
  break;

 case 130:
  ND_PRINT((ndo, "for "));
  atmarp_spaddr_print(ndo, ap, pro);
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
