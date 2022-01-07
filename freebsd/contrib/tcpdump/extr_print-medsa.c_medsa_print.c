
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_short ;
typedef int u_int ;
typedef int u_char ;
struct medsa_pkthdr {int ether_type; } ;
struct lladdr_info {int dummy; } ;
struct TYPE_7__ {int ndo_suppress_default_print; scalar_t__ ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;


 scalar_t__ ETHERMTU ;
 scalar_t__ EXTRACT_16BITS (int *) ;
 int ND_DEFAULTPRINT (int const*,int) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (struct medsa_pkthdr const) ;
 int SRC_DEV (struct medsa_pkthdr const*) ;
 int SRC_PORT (struct medsa_pkthdr const*) ;
 int VID (struct medsa_pkthdr const*) ;
 scalar_t__ ethertype_print (TYPE_1__*,scalar_t__,int const*,int,int,struct lladdr_info const*,struct lladdr_info const*) ;
 int ethertype_values ;
 scalar_t__ llc_print (TYPE_1__*,int const*,int,int,struct lladdr_info const*,struct lladdr_info const*) ;
 int medsa_print_full (TYPE_1__*,struct medsa_pkthdr const*,int) ;
 int tok2str (int ,char*,scalar_t__) ;
 int tstr ;

void
medsa_print(netdissect_options *ndo,
     const u_char *bp, u_int length, u_int caplen,
     const struct lladdr_info *src, const struct lladdr_info *dst)
{
 const struct medsa_pkthdr *medsa;
 u_short ether_type;

 medsa = (const struct medsa_pkthdr *)bp;
 ND_TCHECK(*medsa);

 if (!ndo->ndo_eflag)
  ND_PRINT((ndo, "MEDSA %d.%d:%d: ",
     SRC_DEV(medsa), SRC_PORT(medsa), VID(medsa)));
 else
  medsa_print_full(ndo, medsa, caplen);

 bp += 8;
 length -= 8;
 caplen -= 8;

 ether_type = EXTRACT_16BITS(&medsa->ether_type);
 if (ether_type <= ETHERMTU) {

  if (llc_print(ndo, bp, length, caplen, src, dst) < 0) {

   if (!ndo->ndo_suppress_default_print)
    ND_DEFAULTPRINT(bp, caplen);
  }
 } else {
  if (ndo->ndo_eflag)
   ND_PRINT((ndo, "ethertype %s (0x%04x) ",
      tok2str(ethertype_values, "Unknown",
       ether_type),
      ether_type));
  if (ethertype_print(ndo, ether_type, bp, length, caplen, src, dst) == 0) {

   if (!ndo->ndo_eflag)
    ND_PRINT((ndo, "ethertype %s (0x%04x) ",
       tok2str(ethertype_values, "Unknown",
        ether_type),
       ether_type));

   if (!ndo->ndo_suppress_default_print)
    ND_DEFAULTPRINT(bp, caplen);
  }
 }
 return;
trunc:
 ND_PRINT((ndo, "%s", tstr));
}
