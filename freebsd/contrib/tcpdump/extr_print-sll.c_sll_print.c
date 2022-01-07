
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_short ;
typedef int u_int ;
struct sll_header {int sll_protocol; int sll_addr; int sll_halen; int sll_pkttype; } ;
struct TYPE_5__ {int ndo_qflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ETHERMTU ;
 int EXTRACT_16BITS (int *) ;


 int ND_PRINT (TYPE_1__*) ;
 int etheraddr_string (TYPE_1__*,int ) ;
 int ethertype_values ;
 int sll_pkttype_values ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static inline void
sll_print(netdissect_options *ndo, register const struct sll_header *sllp, u_int length)
{
 u_short ether_type;

        ND_PRINT((ndo, "%3s ",tok2str(sll_pkttype_values,"?",EXTRACT_16BITS(&sllp->sll_pkttype))));






 if (EXTRACT_16BITS(&sllp->sll_halen) == 6)
  ND_PRINT((ndo, "%s ", etheraddr_string(ndo, sllp->sll_addr)));

 if (!ndo->ndo_qflag) {
  ether_type = EXTRACT_16BITS(&sllp->sll_protocol);

  if (ether_type <= ETHERMTU) {



   switch (ether_type) {

   case 128:



    ND_PRINT((ndo, "802.3"));
    break;

   case 129:



    ND_PRINT((ndo, "802.2"));
    break;

   default:



    ND_PRINT((ndo, "ethertype Unknown (0x%04x)",
        ether_type));
    break;
   }
  } else {
   ND_PRINT((ndo, "ethertype %s (0x%04x)",
       tok2str(ethertype_values, "Unknown", ether_type),
       ether_type));
  }
  ND_PRINT((ndo, ", length %u: ", length));
 }
}
