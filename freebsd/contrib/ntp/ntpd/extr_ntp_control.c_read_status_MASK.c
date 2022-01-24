#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* u_short ;
typedef  scalar_t__ u_char ;
struct recvbuf {int dummy; } ;
struct peer {int /*<<< orphan*/  associd; struct peer* p_link; scalar_t__ num_events; } ;
typedef  int /*<<< orphan*/  a_st ;
struct TYPE_2__ {void* status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CERR_BADASSOC ; 
 size_t FUNC0 (void**) ; 
 int CTL_MAX_DATA_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct peer*) ; 
 int /*<<< orphan*/  FUNC5 (struct peer*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int debug ; 
 scalar_t__* def_peer_var ; 
 struct peer* FUNC7 (int) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 struct peer* peer_list ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int res_associd ; 
 scalar_t__ res_authokay ; 
 TYPE_1__ rpkt ; 

__attribute__((used)) static void
FUNC10(
	struct recvbuf *rbufp,
	int restrict_mask
	)
{
	struct peer *peer;
	const u_char *cp;
	size_t n;
	/* a_st holds association ID, status pairs alternating */
	u_short a_st[CTL_MAX_DATA_LEN / sizeof(u_short)];

#ifdef DEBUG
	if (debug > 2)
		printf("read_status: ID %d\n", res_associd);
#endif
	/*
	 * Two choices here. If the specified association ID is
	 * zero we return all known assocation ID's.  Otherwise
	 * we return a bunch of stuff about the particular peer.
	 */
	if (res_associd) {
		peer = FUNC7(res_associd);
		if (NULL == peer) {
			FUNC1(CERR_BADASSOC);
			return;
		}
		rpkt.status = FUNC8(FUNC5(peer));
		if (res_authokay)
			peer->num_events = 0;
		/*
		 * For now, output everything we know about the
		 * peer. May be more selective later.
		 */
		for (cp = def_peer_var; *cp != 0; cp++)
			FUNC4((int)*cp, peer);
		FUNC2(0);
		return;
	}
	n = 0;
	rpkt.status = FUNC8(FUNC6());
	for (peer = peer_list; peer != NULL; peer = peer->p_link) {
		a_st[n++] = FUNC8(peer->associd);
		a_st[n++] = FUNC8(FUNC5(peer));
		/* two entries each loop iteration, so n + 1 */
		if (n + 1 >= FUNC0(a_st)) {
			FUNC3((void *)a_st, n * sizeof(a_st[0]),
				    1);
			n = 0;
		}
	}
	if (n)
		FUNC3((void *)a_st, n * sizeof(a_st[0]), 1);
	FUNC2(0);
}