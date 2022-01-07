
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef scalar_t__ u_int ;
typedef int u_char ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 scalar_t__ EXTRACT_16BITS (int const*) ;
 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,scalar_t__ const) ;
 scalar_t__ OF_PACKET_QUEUE_LEN ;
 int istr ;
 int * of10_queue_props_print (TYPE_1__*,int const*,int const*,scalar_t__) ;
 int tstr ;

__attribute__((used)) static const u_char *
of10_queues_print(netdissect_options *ndo,
                  const u_char *cp, const u_char *ep, u_int len)
{
 const u_char *cp0 = cp;
 const u_int len0 = len;
 uint16_t desclen;

 while (len) {
  if (len < OF_PACKET_QUEUE_LEN)
   goto invalid;

  ND_TCHECK2(*cp, 4);
  ND_PRINT((ndo, "\n\t  queue_id %u", EXTRACT_32BITS(cp)));
  cp += 4;

  ND_TCHECK2(*cp, 2);
  desclen = EXTRACT_16BITS(cp);
  cp += 2;
  ND_PRINT((ndo, ", len %u", desclen));
  if (desclen < OF_PACKET_QUEUE_LEN || desclen > len)
   goto invalid;

  ND_TCHECK2(*cp, 2);
  cp += 2;

  if (ndo->ndo_vflag < 2) {
   ND_TCHECK2(*cp, desclen - OF_PACKET_QUEUE_LEN);
   cp += desclen - OF_PACKET_QUEUE_LEN;
   goto next_queue;
  }
  if (ep == (cp = of10_queue_props_print(ndo, cp, ep, desclen - OF_PACKET_QUEUE_LEN)))
   return ep;
next_queue:
  len -= desclen;
 }
 return cp;

invalid:
 ND_PRINT((ndo, "%s", istr));
 ND_TCHECK2(*cp0, len0);
 return cp0 + len0;
trunc:
 ND_PRINT((ndo, "%s", tstr));
 return ep;
}
