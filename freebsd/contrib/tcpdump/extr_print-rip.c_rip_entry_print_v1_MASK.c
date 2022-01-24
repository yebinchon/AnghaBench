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
typedef  scalar_t__ u_short ;
struct rip_netinfo {int /*<<< orphan*/  rip_metric; int /*<<< orphan*/  rip_dest; int /*<<< orphan*/  rip_family; int /*<<< orphan*/  rip_router; int /*<<< orphan*/  rip_dest_mask; int /*<<< orphan*/  rip_tag; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 scalar_t__ BSD_AFNUM_INET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RIP_ROUTELEN ; 
 int /*<<< orphan*/  bsd_af_values ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(netdissect_options *ndo,
                   register const struct rip_netinfo *ni)
{
	register u_short family;

	/* RFC 1058 */
	family = FUNC0(&ni->rip_family);
	if (family != BSD_AFNUM_INET && family != 0) {
		FUNC2((ndo, "\n\t AFI %s, ", FUNC5(bsd_af_values, "Unknown (%u)", family)));
		FUNC4(ndo, (const uint8_t *)&ni->rip_family, "\n\t  ", RIP_ROUTELEN);
		return;
	}
	if (FUNC0(&ni->rip_tag) ||
	    FUNC1(&ni->rip_dest_mask) ||
	    FUNC1(&ni->rip_router)) {
		/* MBZ fields not zero */
                FUNC4(ndo, (const uint8_t *)&ni->rip_family, "\n\t  ", RIP_ROUTELEN);
		return;
	}
	if (family == 0) {
		FUNC2((ndo, "\n\t  AFI 0, %s, metric: %u",
			FUNC3(ndo, &ni->rip_dest),
			FUNC1(&ni->rip_metric)));
		return;
	} /* BSD_AFNUM_INET */
	FUNC2((ndo, "\n\t  %s, metric: %u",
               FUNC3(ndo, &ni->rip_dest),
	       FUNC1(&ni->rip_metric)));
}