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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
typedef  int u_short ;
typedef  scalar_t__ u_int ;
typedef  char u_char ;
struct rip_netinfo {int /*<<< orphan*/  rip_router; int /*<<< orphan*/  rip_metric; int /*<<< orphan*/  const rip_tag; int /*<<< orphan*/  rip_dest_mask; int /*<<< orphan*/  rip_dest; int /*<<< orphan*/  const rip_family; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int BSD_AFNUM_INET ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ RIP_AUTHLEN ; 
 unsigned int const RIP_ROUTELEN ; 
 int /*<<< orphan*/  bsd_af_values ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static unsigned
FUNC8(netdissect_options *ndo,
                   register const struct rip_netinfo *ni, const unsigned remaining)
{
	register u_short family;

	family = FUNC0(&ni->rip_family);
	if (family == 0xFFFF) { /* variable-sized authentication structures */
		uint16_t auth_type = FUNC0(&ni->rip_tag);
		if (auth_type == 2) {
			register const u_char *p = (const u_char *)&ni->rip_dest;
			u_int i = 0;
			FUNC3((ndo, "\n\t  Simple Text Authentication data: "));
			for (; i < RIP_AUTHLEN; p++, i++)
				FUNC3((ndo, "%c", FUNC2(*p) ? *p : '.'));
		} else if (auth_type == 3) {
			FUNC3((ndo, "\n\t  Auth header:"));
			FUNC3((ndo, " Packet Len %u,", FUNC0((const uint8_t *)ni + 4)));
			FUNC3((ndo, " Key-ID %u,", *((const uint8_t *)ni + 6)));
			FUNC3((ndo, " Auth Data Len %u,", *((const uint8_t *)ni + 7)));
			FUNC3((ndo, " SeqNo %u,", FUNC1(&ni->rip_dest_mask)));
			FUNC3((ndo, " MBZ %u,", FUNC1(&ni->rip_router)));
			FUNC3((ndo, " MBZ %u", FUNC1(&ni->rip_metric)));
		} else if (auth_type == 1) {
			FUNC3((ndo, "\n\t  Auth trailer:"));
			FUNC6(ndo, (const uint8_t *)&ni->rip_dest, "\n\t  ", remaining);
			return remaining; /* AT spans till the packet end */
		} else {
			FUNC3((ndo, "\n\t  Unknown (%u) Authentication data:",
			       FUNC0(&ni->rip_tag)));
			FUNC6(ndo, (const uint8_t *)&ni->rip_dest, "\n\t  ", remaining);
		}
	} else if (family != BSD_AFNUM_INET && family != 0) {
		FUNC3((ndo, "\n\t  AFI %s", FUNC7(bsd_af_values, "Unknown (%u)", family)));
                FUNC6(ndo, (const uint8_t *)&ni->rip_tag, "\n\t  ", RIP_ROUTELEN-2);
	} else { /* BSD_AFNUM_INET or AFI 0 */
		FUNC3((ndo, "\n\t  AFI %s, %15s/%-2d, tag 0x%04x, metric: %u, next-hop: ",
                       FUNC7(bsd_af_values, "%u", family),
                       FUNC4(ndo, &ni->rip_dest),
		       FUNC5(FUNC1(&ni->rip_dest_mask)),
                       FUNC0(&ni->rip_tag),
                       FUNC1(&ni->rip_metric)));
		if (FUNC1(&ni->rip_router))
			FUNC3((ndo, "%s", FUNC4(ndo, &ni->rip_router)));
		else
			FUNC3((ndo, "self"));
	}
	return sizeof (*ni);
}