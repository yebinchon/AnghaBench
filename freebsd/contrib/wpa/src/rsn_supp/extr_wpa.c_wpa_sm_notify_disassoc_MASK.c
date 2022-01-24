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
struct wpa_sm {int /*<<< orphan*/  bssid; scalar_t__ msg_3_of_4_ok; scalar_t__ ft_protocol; scalar_t__ ft_reassoc_completed; scalar_t__ fils_completed; int /*<<< orphan*/  dot11RSNA4WayHandshakeFailures; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ WPA_4WAY_HANDSHAKE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_sm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_sm*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_sm*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_sm*) ; 
 scalar_t__ FUNC5 (struct wpa_sm*) ; 
 int /*<<< orphan*/  wpa_sm_rekey_ptk ; 
 int /*<<< orphan*/  wpa_sm_start_preauth ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_sm*) ; 

void FUNC7(struct wpa_sm *sm)
{
	FUNC0(wpa_sm_start_preauth, sm, NULL);
	FUNC0(wpa_sm_rekey_ptk, sm, NULL);
	FUNC3(sm);
	FUNC2(sm);
	if (FUNC5(sm) == WPA_4WAY_HANDSHAKE)
		sm->dot11RSNA4WayHandshakeFailures++;
#ifdef CONFIG_TDLS
	wpa_tdls_disassoc(sm);
#endif /* CONFIG_TDLS */
#ifdef CONFIG_FILS
	sm->fils_completed = 0;
#endif /* CONFIG_FILS */
#ifdef CONFIG_IEEE80211R
	sm->ft_reassoc_completed = 0;
	sm->ft_protocol = 0;
#endif /* CONFIG_IEEE80211R */

	/* Keys are not needed in the WPA state machine anymore */
	FUNC4(sm);

	sm->msg_3_of_4_ok = 0;
	FUNC1(sm->bssid, 0, ETH_ALEN);
}