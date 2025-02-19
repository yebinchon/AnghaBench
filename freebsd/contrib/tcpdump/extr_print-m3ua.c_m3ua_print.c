
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct tok {int dummy; } ;
struct m3ua_common_header {scalar_t__ v; scalar_t__ msg_class; scalar_t__ msg_type; int len; } ;
typedef int netdissect_options ;


 struct tok* ASPStateMessages ;
 struct tok* ASPTrafficMessages ;
 int const EXTRACT_32BITS (int *) ;
 scalar_t__ M3UA_MSGC_ASPSM ;
 scalar_t__ M3UA_MSGC_ASPTM ;
 scalar_t__ M3UA_MSGC_MGMT ;
 scalar_t__ M3UA_MSGC_RKM ;
 scalar_t__ M3UA_MSGC_SSNM ;
 scalar_t__ M3UA_MSGC_TRANSFER ;
 scalar_t__ M3UA_REL_1_0 ;
 struct tok const* MessageClasses ;
 struct tok* MgmtMessages ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (struct m3ua_common_header const) ;
 int ND_TCHECK2 (int const,int const) ;
 struct tok* RoutingKeyMgmtMessages ;
 struct tok* SS7Messages ;
 struct tok* TransferMessages ;
 int istr ;
 int m3ua_tags_print (int *,int const*,int const) ;
 int tok2str (struct tok const*,char*,scalar_t__) ;
 int tstr ;

void
m3ua_print(netdissect_options *ndo,
           const u_char *buf, const u_int size)
{
  const struct m3ua_common_header *hdr = (const struct m3ua_common_header *) buf;
  const struct tok *dict;


  if (size < sizeof(struct m3ua_common_header))
    goto invalid;
  ND_TCHECK(*hdr);
  if (hdr->v != M3UA_REL_1_0)
    return;

  dict =
    hdr->msg_class == M3UA_MSGC_MGMT ? MgmtMessages :
    hdr->msg_class == M3UA_MSGC_TRANSFER ? TransferMessages :
    hdr->msg_class == M3UA_MSGC_SSNM ? SS7Messages :
    hdr->msg_class == M3UA_MSGC_ASPSM ? ASPStateMessages :
    hdr->msg_class == M3UA_MSGC_ASPTM ? ASPTrafficMessages :
    hdr->msg_class == M3UA_MSGC_RKM ? RoutingKeyMgmtMessages :
    ((void*)0);

  ND_PRINT((ndo, "\n\t\t%s", tok2str(MessageClasses, "Unknown message class %i", hdr->msg_class)));
  if (dict != ((void*)0))
    ND_PRINT((ndo, " %s Message", tok2str(dict, "Unknown (0x%02x)", hdr->msg_type)));

  if (size != EXTRACT_32BITS(&hdr->len))
    ND_PRINT((ndo, "\n\t\t\t@@@@@@ Corrupted length %u of message @@@@@@", EXTRACT_32BITS(&hdr->len)));
  else
    m3ua_tags_print(ndo, buf + sizeof(struct m3ua_common_header), EXTRACT_32BITS(&hdr->len) - sizeof(struct m3ua_common_header));
  return;

invalid:
  ND_PRINT((ndo, "%s", istr));
  ND_TCHECK2(*buf, size);
  return;
trunc:
  ND_PRINT((ndo, "%s", tstr));
}
