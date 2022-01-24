#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct wpa_supplicant {size_t wnm_num_neighbor_report; struct wpa_bss* current_bss; struct neighbor_report* wnm_neighbor_report_elements; struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {int dummy; } ;
struct TYPE_3__ {scalar_t__ sec; } ;
struct wpa_scan_results {size_t num; TYPE_1__ fetch_time; struct wpa_scan_res** res; } ;
struct wpa_scan_res {size_t const* bssid; int age; } ;
struct wpa_bss {size_t const ssid_len; int /*<<< orphan*/  ssid; } ;
struct neighbor_report {scalar_t__ preference; int /*<<< orphan*/  bssid; scalar_t__ preference_present; } ;

/* Variables and functions */
 size_t const ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WLAN_EID_SSID ; 
 int WNM_SCAN_RESULT_AGE ; 
 struct wpa_bss* FUNC0 (struct wpa_supplicant*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,struct wpa_scan_results*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,size_t const*,size_t const) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,struct wpa_scan_res*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_scan_res*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*,struct wpa_bss*,struct wpa_ssid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*,struct wpa_scan_res*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 struct wpa_scan_results* FUNC9 (struct wpa_supplicant*) ; 
 size_t* FUNC10 (struct wpa_scan_res*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct wpa_scan_results*) ; 

__attribute__((used)) static int FUNC12(struct wpa_supplicant *wpa_s)
{
	struct wpa_scan_results *scan_res;
	struct wpa_bss *bss;
	struct wpa_ssid *ssid = wpa_s->current_ssid;
	u8 i, found = 0;
	size_t j;

	FUNC8(wpa_s, MSG_DEBUG,
		"WNM: Fetch current scan results from the driver for checking transition candidates");
	scan_res = FUNC9(wpa_s);
	if (!scan_res) {
		FUNC8(wpa_s, MSG_DEBUG, "WNM: Failed to get scan results");
		return 0;
	}

	if (scan_res->fetch_time.sec == 0)
		FUNC2(&scan_res->fetch_time);

	FUNC1(wpa_s, scan_res);

	for (i = 0; i < wpa_s->wnm_num_neighbor_report; i++) {
		struct neighbor_report *nei;

		nei = &wpa_s->wnm_neighbor_report_elements[i];
		if (nei->preference_present && nei->preference == 0)
			continue;

		for (j = 0; j < scan_res->num; j++) {
			struct wpa_scan_res *res;
			const u8 *ssid_ie;

			res = scan_res->res[j];
			if (FUNC3(nei->bssid, res->bssid, ETH_ALEN) != 0 ||
			    res->age > WNM_SCAN_RESULT_AGE * 1000)
				continue;
			bss = wpa_s->current_bss;
			ssid_ie = FUNC10(res, WLAN_EID_SSID);
			if (bss && ssid_ie &&
			    (bss->ssid_len != ssid_ie[1] ||
			     FUNC3(bss->ssid, ssid_ie + 2,
				       bss->ssid_len) != 0))
				continue;

			/* Potential candidate found */
			found = 1;
			FUNC5(res);
			FUNC4(wpa_s, res);
			FUNC7(wpa_s, res,
						&scan_res->fetch_time);
		}
	}

	FUNC11(scan_res);
	if (!found) {
		FUNC8(wpa_s, MSG_DEBUG,
			"WNM: No transition candidate matches existing scan results");
		return 0;
	}

	bss = FUNC0(wpa_s, WNM_SCAN_RESULT_AGE, NULL);
	if (!bss) {
		FUNC8(wpa_s, MSG_DEBUG,
			"WNM: Comparison of scan results against transition candidates did not find matches");
		return 0;
	}

	/* Associate to the network */
	FUNC6(wpa_s, bss, ssid, 0);
	return 1;
}