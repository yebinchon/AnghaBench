#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int u_char ;
struct in_addr {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int const) ; 
 int /*<<< orphan*/  FUNC4 (int const,int) ; 
 int /*<<< orphan*/  FUNC5 (int const) ; 
#define  PIMV1_TYPE_ASSERT 135 
#define  PIMV1_TYPE_GRAFT 134 
#define  PIMV1_TYPE_GRAFT_ACK 133 
#define  PIMV1_TYPE_JOIN_PRUNE 132 
#define  PIMV1_TYPE_QUERY 131 
#define  PIMV1_TYPE_REGISTER 130 
#define  PIMV1_TYPE_REGISTER_STOP 129 
#define  PIMV1_TYPE_RP_REACHABILITY 128 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pimv1_type_str ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC10(netdissect_options *ndo,
            register const u_char *bp, register u_int len)
{
	register u_char type;

	FUNC3(bp[1]);
	type = bp[1];

	FUNC2((ndo, " %s", FUNC8(pimv1_type_str, "[type %u]", type)));
	switch (type) {
	case PIMV1_TYPE_QUERY:
		if (FUNC5(bp[8])) {
			switch (bp[8] >> 4) {
			case 0:
				FUNC2((ndo, " Dense-mode"));
				break;
			case 1:
				FUNC2((ndo, " Sparse-mode"));
				break;
			case 2:
				FUNC2((ndo, " Sparse-Dense-mode"));
				break;
			default:
				FUNC2((ndo, " mode-%d", bp[8] >> 4));
				break;
			}
		}
		if (ndo->ndo_vflag) {
			FUNC4(bp[10],2);
			FUNC2((ndo, " (Hold-time "));
			FUNC9(ndo, FUNC0(&bp[10]));
			FUNC2((ndo, ")"));
		}
		break;

	case PIMV1_TYPE_REGISTER:
		FUNC4(bp[8], 20);			/* ip header */
		FUNC2((ndo, " for %s > %s", FUNC6(ndo, &bp[20]),
		    FUNC6(ndo, &bp[24])));
		break;
	case PIMV1_TYPE_REGISTER_STOP:
		FUNC4(bp[12], sizeof(struct in_addr));
		FUNC2((ndo, " for %s > %s", FUNC6(ndo, &bp[8]),
		    FUNC6(ndo, &bp[12])));
		break;
	case PIMV1_TYPE_RP_REACHABILITY:
		if (ndo->ndo_vflag) {
			FUNC4(bp[22], 2);
			FUNC2((ndo, " group %s", FUNC6(ndo, &bp[8])));
			if (FUNC1(&bp[12]) != 0xffffffff)
				FUNC2((ndo, "/%s", FUNC6(ndo, &bp[12])));
			FUNC2((ndo, " RP %s hold ", FUNC6(ndo, &bp[16])));
			FUNC9(ndo, FUNC0(&bp[22]));
		}
		break;
	case PIMV1_TYPE_ASSERT:
		FUNC4(bp[16], sizeof(struct in_addr));
		FUNC2((ndo, " for %s > %s", FUNC6(ndo, &bp[16]),
		    FUNC6(ndo, &bp[8])));
		if (FUNC1(&bp[12]) != 0xffffffff)
			FUNC2((ndo, "/%s", FUNC6(ndo, &bp[12])));
		FUNC4(bp[24], 4);
		FUNC2((ndo, " %s pref %d metric %d",
		    (bp[20] & 0x80) ? "RP-tree" : "SPT",
		FUNC1(&bp[20]) & 0x7fffffff,
		FUNC1(&bp[24])));
		break;
	case PIMV1_TYPE_JOIN_PRUNE:
	case PIMV1_TYPE_GRAFT:
	case PIMV1_TYPE_GRAFT_ACK:
		if (ndo->ndo_vflag) {
			if (len < 8)
				goto trunc;
			FUNC7(ndo, &bp[8], len - 8);
		}
		break;
	}
	FUNC3(bp[4]);
	if ((bp[4] >> 4) != 1)
		FUNC2((ndo, " [v%d]", bp[4] >> 4));
	return;

trunc:
	FUNC2((ndo, "[|pim]"));
	return;
}