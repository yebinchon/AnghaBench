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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_tdls_peer {int tpk_in_progress; int initiator; int /*<<< orphan*/  addr; } ;
struct wpa_sm {int tdls_prohibited; int /*<<< orphan*/  tdls_supported; scalar_t__ tdls_disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int TDLS_TESTING_IGNORE_AP_PROHIBIT ; 
 int tdls_testing ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct wpa_sm*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct wpa_tdls_peer* FUNC2 (struct wpa_sm*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_sm*,struct wpa_tdls_peer*) ; 
 scalar_t__ FUNC4 (struct wpa_sm*,struct wpa_tdls_peer*) ; 

int FUNC5(struct wpa_sm *sm, const u8 *addr)
{
	struct wpa_tdls_peer *peer;
	int tdls_prohibited = sm->tdls_prohibited;

	if (sm->tdls_disabled || !sm->tdls_supported)
		return -1;

#ifdef CONFIG_TDLS_TESTING
	if ((tdls_testing & TDLS_TESTING_IGNORE_AP_PROHIBIT) &&
	    tdls_prohibited) {
		wpa_printf(MSG_DEBUG, "TDLS: Testing - ignore AP prohibition "
			   "on TDLS");
		tdls_prohibited = 0;
	}
#endif /* CONFIG_TDLS_TESTING */

	if (tdls_prohibited) {
		FUNC0(MSG_DEBUG, "TDLS: TDLS is prohibited in this BSS - "
			   "reject request to start setup");
		return -1;
	}

	peer = FUNC2(sm, addr, NULL);
	if (peer == NULL)
		return -1;

	if (peer->tpk_in_progress) {
		FUNC0(MSG_DEBUG, "TDLS: Setup is already in progress with the peer");
		return 0;
	}

	peer->initiator = 1;

	/* add the peer to the driver as a "setup in progress" peer */
	if (FUNC1(sm, peer->addr, 1, 0, 0, NULL, 0, NULL,
				    NULL, 0, 0, NULL, 0, NULL, 0, NULL, 0)) {
		FUNC3(sm, peer);
		return -1;
	}

	peer->tpk_in_progress = 1;

	if (FUNC4(sm, peer) < 0) {
		FUNC3(sm, peer);
		return -1;
	}

	return 0;
}