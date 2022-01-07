
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_short ;
typedef int u_int ;
typedef int u_char ;
struct atNBPtuple {int skt; int node; int net; int enumerator; } ;
struct atNBP {int control; int id; } ;
struct TYPE_7__ {int * ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int *) ;
 int ND_PRINT (TYPE_1__*) ;
 int ataddr_string (TYPE_1__*,int ,int ) ;

 int nbpHeaderSize ;


 int nbp_name_print (TYPE_1__*,struct atNBPtuple const*,int const*) ;
 struct atNBPtuple* nbp_tuple_print (TYPE_1__*,struct atNBPtuple const*,int const*,int ,int ,int ) ;
 int tstr ;

__attribute__((used)) static void
nbp_print(netdissect_options *ndo,
          register const struct atNBP *np, u_int length, register u_short snet,
          register u_char snode, register u_char skt)
{
 register const struct atNBPtuple *tp =
  (const struct atNBPtuple *)((const u_char *)np + nbpHeaderSize);
 int i;
 const u_char *ep;

 if (length < nbpHeaderSize) {
  ND_PRINT((ndo, " truncated-nbp %u", length));
  return;
 }

 length -= nbpHeaderSize;
 if (length < 8) {

  ND_PRINT((ndo, " truncated-nbp %u", length + nbpHeaderSize));
  return;
 }

 ep = ndo->ndo_snapend;
 if ((const u_char *)tp > ep) {
  ND_PRINT((ndo, "%s", tstr));
  return;
 }
 switch (i = np->control & 0xf0) {

 case 130:
 case 129:
  ND_PRINT((ndo, i == 129? " nbp-lkup %d:":" nbp-brRq %d:", np->id));
  if ((const u_char *)(tp + 1) > ep) {
   ND_PRINT((ndo, "%s", tstr));
   return;
  }
  (void)nbp_name_print(ndo, tp, ep);





  if ((np->control & 0xf) != 1)
   ND_PRINT((ndo, " [ntup=%d]", np->control & 0xf));
  if (tp->enumerator)
   ND_PRINT((ndo, " [enum=%d]", tp->enumerator));
  if (EXTRACT_16BITS(&tp->net) != snet ||
      tp->node != snode || tp->skt != skt)
   ND_PRINT((ndo, " [addr=%s.%d]",
       ataddr_string(ndo, EXTRACT_16BITS(&tp->net),
       tp->node), tp->skt));
  break;

 case 128:
  ND_PRINT((ndo, " nbp-reply %d:", np->id));


  for (i = np->control & 0xf; --i >= 0 && tp; )
   tp = nbp_tuple_print(ndo, tp, ep, snet, snode, skt);
  break;

 default:
  ND_PRINT((ndo, " nbp-0x%x  %d (%u)", np->control, np->id, length));
  break;
 }
}
