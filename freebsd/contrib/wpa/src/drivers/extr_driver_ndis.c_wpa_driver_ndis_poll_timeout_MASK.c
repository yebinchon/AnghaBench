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
struct wpa_driver_ndis_data {scalar_t__ mode; int /*<<< orphan*/  ctx; int /*<<< orphan*/  bssid; scalar_t__ wired; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  EVENT_ASSOC ; 
 int /*<<< orphan*/  EVENT_DISASSOC ; 
 scalar_t__ IEEE80211_MODE_IBSS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,void (*) (void*,void*),struct wpa_driver_ndis_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_driver_ndis_data*) ; 
 scalar_t__ FUNC6 (struct wpa_driver_ndis_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(void *eloop_ctx, void *timeout_ctx)
{
	struct wpa_driver_ndis_data *drv = eloop_ctx;
	u8 bssid[ETH_ALEN];
	int poll;

	if (drv->wired)
		return;

	if (FUNC6(drv, bssid)) {
		/* Disconnected */
		if (!FUNC1(drv->bssid)) {
			FUNC4(drv->bssid, 0, ETH_ALEN);
			FUNC7(drv->ctx, EVENT_DISASSOC, NULL);
		}
	} else {
		/* Connected */
		if (FUNC2(drv->bssid, bssid, ETH_ALEN) != 0) {
			FUNC3(drv->bssid, bssid, ETH_ALEN);
			FUNC5(drv);
			FUNC7(drv->ctx, EVENT_ASSOC, NULL);
		}
	}

	/* When using integrated NDIS event receiver, we can skip BSSID
	 * polling when using infrastructure network. However, when using
	 * IBSS mode, many driver do not seem to generate connection event,
	 * so we need to enable BSSID polling to figure out when IBSS network
	 * has been formed.
	 */
	poll = drv->mode == IEEE80211_MODE_IBSS;
#ifndef CONFIG_NDIS_EVENTS_INTEGRATED
#ifndef _WIN32_WCE
	poll = 1;
#endif /* _WIN32_WCE */
#endif /* CONFIG_NDIS_EVENTS_INTEGRATED */

	if (poll) {
		FUNC0(1, 0, wpa_driver_ndis_poll_timeout,
					drv, NULL);
	}
}