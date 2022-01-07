
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
typedef scalar_t__ u_char ;
struct atNBPtuple {int enumerator; scalar_t__ skt; scalar_t__ node; int net; } ;
typedef int netdissect_options ;


 scalar_t__ EXTRACT_16BITS (int *) ;
 int ND_PRINT (int *) ;
 int ataddr_string (int *,scalar_t__,scalar_t__) ;
 struct atNBPtuple* nbp_name_print (int *,struct atNBPtuple const*,scalar_t__ const*) ;
 int tstr ;

__attribute__((used)) static const struct atNBPtuple *
nbp_tuple_print(netdissect_options *ndo,
                register const struct atNBPtuple *tp, register const u_char *ep,
                register u_short snet, register u_char snode, register u_char skt)
{
 register const struct atNBPtuple *tpn;

 if ((const u_char *)(tp + 1) > ep) {
  ND_PRINT((ndo, "%s", tstr));
  return 0;
 }
 tpn = nbp_name_print(ndo, tp, ep);


 if (tp->enumerator != 1)
  ND_PRINT((ndo, "(%d)", tp->enumerator));


 if (tp->skt != skt)
  ND_PRINT((ndo, " %d", tp->skt));


 if (EXTRACT_16BITS(&tp->net) != snet || tp->node != snode)
  ND_PRINT((ndo, " [addr=%s]",
      ataddr_string(ndo, EXTRACT_16BITS(&tp->net), tp->node)));

 return (tpn);
}
