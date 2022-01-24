#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int u_char ;
struct TYPE_11__ {int ndo_vflag; scalar_t__ ndo_snapend; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
#define  DVMRP_ASK_NEIGHBORS 136 
#define  DVMRP_ASK_NEIGHBORS2 135 
#define  DVMRP_GRAFT 134 
#define  DVMRP_GRAFT_ACK 133 
#define  DVMRP_NEIGHBORS 132 
#define  DVMRP_NEIGHBORS2 131 
#define  DVMRP_PROBE 130 
#define  DVMRP_PRUNE 129 
#define  DVMRP_REPORT 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (int const,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int const*,int const*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int const*,int const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int const*,int const*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int const*,int const*,int) ; 
 int target_level ; 

void
FUNC10(netdissect_options *ndo,
            register const u_char *bp, register u_int len)
{
	register const u_char *ep;
	register u_char type;

	ep = (const u_char *)ndo->ndo_snapend;
	if (bp >= ep)
		return;

	FUNC1(bp[1]);
	type = bp[1];

	/* Skip IGMP header */
	bp += 8;
	len -= 8;

	switch (type) {

	case DVMRP_PROBE:
		FUNC0((ndo, " Probe"));
		if (ndo->ndo_vflag) {
			if (FUNC7(ndo, bp, ep, len) < 0)
				goto trunc;
		}
		break;

	case DVMRP_REPORT:
		FUNC0((ndo, " Report"));
		if (ndo->ndo_vflag > 1) {
			if (FUNC9(ndo, bp, ep, len) < 0)
				goto trunc;
		}
		break;

	case DVMRP_ASK_NEIGHBORS:
		FUNC0((ndo, " Ask-neighbors(old)"));
		break;

	case DVMRP_NEIGHBORS:
		FUNC0((ndo, " Neighbors(old)"));
		if (FUNC5(ndo, bp, ep, len) < 0)
			goto trunc;
		break;

	case DVMRP_ASK_NEIGHBORS2:
		FUNC0((ndo, " Ask-neighbors2"));
		break;

	case DVMRP_NEIGHBORS2:
		FUNC0((ndo, " Neighbors2"));
		/*
		 * extract version and capabilities from IGMP group
		 * address field
		 */
		bp -= 4;
		FUNC2(bp[0], 4);
		target_level = (bp[0] << 24) | (bp[1] << 16) |
		    (bp[2] << 8) | bp[3];
		bp += 4;
		if (FUNC6(ndo, bp, ep, len) < 0)
			goto trunc;
		break;

	case DVMRP_PRUNE:
		FUNC0((ndo, " Prune"));
		if (FUNC8(ndo, bp) < 0)
			goto trunc;
		break;

	case DVMRP_GRAFT:
		FUNC0((ndo, " Graft"));
		if (FUNC3(ndo, bp) < 0)
			goto trunc;
		break;

	case DVMRP_GRAFT_ACK:
		FUNC0((ndo, " Graft-ACK"));
		if (FUNC4(ndo, bp) < 0)
			goto trunc;
		break;

	default:
		FUNC0((ndo, " [type %d]", type));
		break;
	}
	return;

trunc:
	FUNC0((ndo, "[|dvmrp]"));
	return;
}