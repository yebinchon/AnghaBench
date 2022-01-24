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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u_int ;
struct hsrp {scalar_t__ hsrp_version; scalar_t__ hsrp_op_code; scalar_t__ hsrp_state; scalar_t__ hsrp_group; scalar_t__ hsrp_reserved; scalar_t__ hsrp_virtaddr; int /*<<< orphan*/  hsrp_authdata; int /*<<< orphan*/  hsrp_priority; int /*<<< orphan*/  hsrp_holdtime; int /*<<< orphan*/  hsrp_hellotime; } ;
struct TYPE_7__ {int /*<<< orphan*/  ndo_snapend; scalar_t__ ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  op_code_str ; 
 int /*<<< orphan*/  states ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC7(netdissect_options *ndo, register const uint8_t *bp, register u_int len)
{
	const struct hsrp *hp = (const struct hsrp *) bp;

	FUNC1(hp->hsrp_version);
	FUNC0((ndo, "HSRPv%d", hp->hsrp_version));
	if (hp->hsrp_version != 0)
		return;
	FUNC1(hp->hsrp_op_code);
	FUNC0((ndo, "-"));
	FUNC0((ndo, "%s ", FUNC5(op_code_str, "unknown (%d)", hp->hsrp_op_code)));
	FUNC0((ndo, "%d: ", len));
	FUNC1(hp->hsrp_state);
	FUNC0((ndo, "state=%s ", FUNC4(states, "Unknown (%d)", hp->hsrp_state)));
	FUNC1(hp->hsrp_group);
	FUNC0((ndo, "group=%d ", hp->hsrp_group));
	FUNC1(hp->hsrp_reserved);
	if (hp->hsrp_reserved != 0) {
		FUNC0((ndo, "[reserved=%d!] ", hp->hsrp_reserved));
	}
	FUNC1(hp->hsrp_virtaddr);
	FUNC0((ndo, "addr=%s", FUNC3(ndo, &hp->hsrp_virtaddr)));
	if (ndo->ndo_vflag) {
		FUNC0((ndo, " hellotime="));
		FUNC6(ndo, hp->hsrp_hellotime);
		FUNC0((ndo, " holdtime="));
		FUNC6(ndo, hp->hsrp_holdtime);
		FUNC0((ndo, " priority=%d", hp->hsrp_priority));
		FUNC0((ndo, " auth=\""));
		if (FUNC2(ndo, hp->hsrp_authdata, sizeof(hp->hsrp_authdata),
		    ndo->ndo_snapend)) {
			FUNC0((ndo, "\""));
			goto trunc;
		}
		FUNC0((ndo, "\""));
	}
	return;
trunc:
	FUNC0((ndo, "[|hsrp]"));
}