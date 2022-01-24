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
struct wpa_driver_scan_params {int dummy; } ;
struct wpa_driver_ndis_data {int radio_enabled; int /*<<< orphan*/  ctx; scalar_t__ native80211; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  OID_802_11_BSSID_LIST_SCAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_driver_ndis_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_driver_ndis_data*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wpa_driver_ndis_data*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (struct wpa_driver_ndis_data*) ; 
 int FUNC4 (struct wpa_driver_ndis_data*,struct wpa_driver_scan_params*) ; 
 int /*<<< orphan*/  wpa_driver_ndis_scan_timeout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(void *priv,
				struct wpa_driver_scan_params *params)
{
	struct wpa_driver_ndis_data *drv = priv;
	int res;

	if (drv->native80211)
		return FUNC4(drv, params);

	if (!drv->radio_enabled) {
		FUNC5(MSG_DEBUG, "NDIS: turning radio on before the first"
			   " scan");
		if (FUNC3(drv) < 0) {
			FUNC5(MSG_DEBUG, "NDIS: failed to enable radio");
		}
		drv->radio_enabled = 1;
	}

	res = FUNC2(drv, OID_802_11_BSSID_LIST_SCAN, "    ", 4);
	FUNC0(wpa_driver_ndis_scan_timeout, drv, drv->ctx);
	FUNC1(7, 0, wpa_driver_ndis_scan_timeout, drv,
			       drv->ctx);
	return res;
}