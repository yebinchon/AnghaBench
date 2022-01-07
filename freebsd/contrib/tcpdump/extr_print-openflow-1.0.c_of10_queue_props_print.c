
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef scalar_t__ u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 scalar_t__ EXTRACT_16BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,scalar_t__ const) ;


 scalar_t__ OF_QUEUE_PROP_HEADER_LEN ;
 scalar_t__ OF_QUEUE_PROP_MIN_RATE_LEN ;
 int istr ;
 int ofpqt_str ;
 int tok2str (int ,char*,scalar_t__) ;
 int tstr ;

__attribute__((used)) static const u_char *
of10_queue_props_print(netdissect_options *ndo,
                       const u_char *cp, const u_char *ep, u_int len)
{
 const u_char *cp0 = cp;
 const u_int len0 = len;
 uint16_t property, plen, rate;

 while (len) {
  u_char plen_bogus = 0, skip = 0;

  if (len < OF_QUEUE_PROP_HEADER_LEN)
   goto invalid;

  ND_TCHECK2(*cp, 2);
  property = EXTRACT_16BITS(cp);
  cp += 2;
  ND_PRINT((ndo, "\n\t   property %s", tok2str(ofpqt_str, "invalid (0x%04x)", property)));

  ND_TCHECK2(*cp, 2);
  plen = EXTRACT_16BITS(cp);
  cp += 2;
  ND_PRINT((ndo, ", len %u", plen));
  if (plen < OF_QUEUE_PROP_HEADER_LEN || plen > len)
   goto invalid;

  ND_TCHECK2(*cp, 4);
  cp += 4;

  switch (property) {
  case 128:
   plen_bogus = plen != OF_QUEUE_PROP_HEADER_LEN;
   break;
  case 129:
   plen_bogus = plen != OF_QUEUE_PROP_MIN_RATE_LEN;
   break;
  default:
   skip = 1;
  }
  if (plen_bogus) {
   ND_PRINT((ndo, " (bogus)"));
   skip = 1;
  }
  if (skip) {
   ND_TCHECK2(*cp, plen - 4);
   cp += plen - 4;
   goto next_property;
  }
  if (property == 129) {

   ND_TCHECK2(*cp, 2);
   rate = EXTRACT_16BITS(cp);
   cp += 2;
   if (rate > 1000)
    ND_PRINT((ndo, ", rate disabled"));
   else
    ND_PRINT((ndo, ", rate %u.%u%%", rate / 10, rate % 10));

   ND_TCHECK2(*cp, 6);
   cp += 6;
  }
next_property:
  len -= plen;
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
