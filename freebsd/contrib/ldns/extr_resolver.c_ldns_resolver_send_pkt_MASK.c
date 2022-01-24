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
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 scalar_t__ LDNS_STATUS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 size_t* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

ldns_status
FUNC10(ldns_pkt **answer, ldns_resolver *r,
				   ldns_pkt *query_pkt)
{
	ldns_pkt *answer_pkt = NULL;
	ldns_status stat = LDNS_STATUS_OK;
	size_t *rtt;

	stat = FUNC9(&answer_pkt, (ldns_resolver *)r, query_pkt);
	if (stat != LDNS_STATUS_OK) {
		if(answer_pkt) {
			FUNC1(answer_pkt);
			answer_pkt = NULL;
		}
	} else {
		/* if tc=1 fall back to EDNS and/or TCP */
		/* check for tcp first (otherwise we don't care about tc=1) */
		if (!FUNC8(r) && FUNC5(r)) {
			if (FUNC3(answer_pkt)) {
				/* was EDNS0 set? */
				if (FUNC0(query_pkt) == 0) {
					FUNC2(query_pkt
							, 4096);
					FUNC1(answer_pkt);
					answer_pkt = NULL;
					/* Nameservers should not become 
					 * unreachable because fragments are
					 * dropped (network error). We might
					 * still have success with TCP.
					 * Therefore maintain reachability
					 * statuses of the nameservers by
					 * backup and restore the rtt list.
					 */
					rtt = FUNC4(r);
					stat = FUNC9(&answer_pkt, r
							, query_pkt);
					FUNC6(r, rtt);
				}
				/* either way, if it is still truncated, use TCP */
				if (stat != LDNS_STATUS_OK ||
				    FUNC3(answer_pkt)) {
					FUNC7(r, true);
					FUNC1(answer_pkt);
					stat = FUNC9(&answer_pkt, r, query_pkt);
					FUNC7(r, false);
				}
			}
		}
	}

	if (answer) {
		*answer = answer_pkt;
	}

	return stat;
}