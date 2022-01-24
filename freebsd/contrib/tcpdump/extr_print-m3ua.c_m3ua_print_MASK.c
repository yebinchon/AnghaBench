#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct tok {int dummy; } ;
struct m3ua_common_header {scalar_t__ v; scalar_t__ msg_class; scalar_t__ msg_type; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 struct tok* ASPStateMessages ; 
 struct tok* ASPTrafficMessages ; 
 int const FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ M3UA_MSGC_ASPSM ; 
 scalar_t__ M3UA_MSGC_ASPTM ; 
 scalar_t__ M3UA_MSGC_MGMT ; 
 scalar_t__ M3UA_MSGC_RKM ; 
 scalar_t__ M3UA_MSGC_SSNM ; 
 scalar_t__ M3UA_MSGC_TRANSFER ; 
 scalar_t__ M3UA_REL_1_0 ; 
 struct tok const* MessageClasses ; 
 struct tok* MgmtMessages ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct m3ua_common_header const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,int const) ; 
 struct tok* RoutingKeyMgmtMessages ; 
 struct tok* SS7Messages ; 
 struct tok* TransferMessages ; 
 int /*<<< orphan*/  istr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int const) ; 
 int /*<<< orphan*/  FUNC5 (struct tok const*,char*,scalar_t__) ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC6(netdissect_options *ndo,
           const u_char *buf, const u_int size)
{
  const struct m3ua_common_header *hdr = (const struct m3ua_common_header *) buf;
  const struct tok *dict;

  /* size includes the header */
  if (size < sizeof(struct m3ua_common_header))
    goto invalid;
  FUNC2(*hdr);
  if (hdr->v != M3UA_REL_1_0)
    return;

  dict =
    hdr->msg_class == M3UA_MSGC_MGMT     ? MgmtMessages :
    hdr->msg_class == M3UA_MSGC_TRANSFER ? TransferMessages :
    hdr->msg_class == M3UA_MSGC_SSNM     ? SS7Messages :
    hdr->msg_class == M3UA_MSGC_ASPSM    ? ASPStateMessages :
    hdr->msg_class == M3UA_MSGC_ASPTM    ? ASPTrafficMessages :
    hdr->msg_class == M3UA_MSGC_RKM      ? RoutingKeyMgmtMessages :
    NULL;

  FUNC1((ndo, "\n\t\t%s", FUNC5(MessageClasses, "Unknown message class %i", hdr->msg_class)));
  if (dict != NULL)
    FUNC1((ndo, " %s Message", FUNC5(dict, "Unknown (0x%02x)", hdr->msg_type)));

  if (size != FUNC0(&hdr->len))
    FUNC1((ndo, "\n\t\t\t@@@@@@ Corrupted length %u of message @@@@@@", FUNC0(&hdr->len)));
  else
    FUNC4(ndo, buf + sizeof(struct m3ua_common_header), FUNC0(&hdr->len) - sizeof(struct m3ua_common_header));
  return;

invalid:
  FUNC1((ndo, "%s", istr));
  FUNC3(*buf, size);
  return;
trunc:
  FUNC1((ndo, "%s", tstr));
}