#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wpabuf {int dummy; } ;
struct wpa_supplicant {unsigned int max_sched_scan_ssids; int normal_scans; int max_scan_ssids; size_t max_match_sets; int wpa_state; unsigned int sched_scan_timeout; int first_sched_scan; int enable_oce; int sched_scan_plans_num; int max_sched_scan_plan_interval; int mac_addr_rand_enable; struct wpa_ssid* prev_sched_ssid; scalar_t__ sched_scan_timed_out; scalar_t__ mac_addr_sched_scan; TYPE_2__* conf; struct sched_scan_plan* sched_scan_plans; struct wpa_driver_scan_params* autoscan_params; scalar_t__ sched_scanning; scalar_t__ sched_scan_stop_req; int /*<<< orphan*/  sched_scan_supported; } ;
struct wpa_ssid {scalar_t__ key_mgmt; struct wpa_ssid* next; scalar_t__ scan_ssid; scalar_t__ ssid_len; scalar_t__ ssid; } ;
struct wpa_driver_scan_params {unsigned int num_ssids; size_t num_filter_ssids; int oce_scan; int sched_scan_plans_num; int sched_scan_start_delay; int mac_addr_rand; struct sched_scan_plan* sched_scan_plans; TYPE_3__* filter_ssids; scalar_t__ mac_addr_mask; scalar_t__ mac_addr; int /*<<< orphan*/  freqs; scalar_t__ filter_rssi; int /*<<< orphan*/  extra_ies_len; int /*<<< orphan*/  extra_ies; TYPE_1__* ssids; } ;
struct wpa_driver_scan_filter {int dummy; } ;
struct sched_scan_plan {int interval; scalar_t__ iterations; } ;
typedef  int /*<<< orphan*/  params ;
typedef  enum wpa_states { ____Placeholder_wpa_states } wpa_states ;
struct TYPE_7__ {scalar_t__ ssid_len; int /*<<< orphan*/  ssid; } ;
struct TYPE_6__ {int sched_scan_interval; int sched_scan_start_delay; int /*<<< orphan*/  freq_list; scalar_t__ filter_rssi; struct wpa_ssid* ssid; scalar_t__ disable_scan_offload; } ;
struct TYPE_5__ {scalar_t__ ssid_len; scalar_t__ ssid; } ;

/* Variables and functions */
 scalar_t__ ETH_ALEN ; 
 int MAC_ADDR_RAND_SCHED_SCAN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int OCE_STA ; 
 unsigned int WPAS_MAX_SCAN_SSIDS ; 
 scalar_t__ WPA_DISCONNECTED ; 
 scalar_t__ WPA_INACTIVE ; 
 scalar_t__ WPA_KEY_MGMT_WPS ; 
 scalar_t__ WPA_SCANNING ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_driver_scan_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_supplicant*,struct wpa_driver_scan_params*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpa_supplicant*,struct wpa_driver_scan_params*) ; 
 int FUNC11 (scalar_t__,scalar_t__) ; 
 struct wpabuf* FUNC12 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  wpa_supplicant_sched_scan_timeout ; 
 int /*<<< orphan*/  FUNC13 (struct wpa_supplicant*,int) ; 
 int FUNC14 (struct wpa_supplicant*,struct wpa_driver_scan_params*) ; 
 int /*<<< orphan*/  FUNC15 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC16 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC17 (struct wpabuf*) ; 
 scalar_t__ FUNC18 (struct wpa_supplicant*,struct wpa_ssid*) ; 

int FUNC19(struct wpa_supplicant *wpa_s)
{
	struct wpa_driver_scan_params params;
	struct wpa_driver_scan_params *scan_params;
	enum wpa_states prev_state;
	struct wpa_ssid *ssid = NULL;
	struct wpabuf *extra_ie = NULL;
	int ret;
	unsigned int max_sched_scan_ssids;
	int wildcard = 0;
	int need_ssids;
	struct sched_scan_plan scan_plan;

	if (!wpa_s->sched_scan_supported)
		return -1;

	if (wpa_s->max_sched_scan_ssids > WPAS_MAX_SCAN_SSIDS)
		max_sched_scan_ssids = WPAS_MAX_SCAN_SSIDS;
	else
		max_sched_scan_ssids = wpa_s->max_sched_scan_ssids;
	if (max_sched_scan_ssids < 1 || wpa_s->conf->disable_scan_offload)
		return -1;

	wpa_s->sched_scan_stop_req = 0;

	if (wpa_s->sched_scanning) {
		FUNC6(wpa_s, MSG_DEBUG, "Already sched scanning");
		return 0;
	}

	need_ssids = 0;
	for (ssid = wpa_s->conf->ssid; ssid; ssid = ssid->next) {
		if (!FUNC18(wpa_s, ssid) && !ssid->scan_ssid) {
			/* Use wildcard SSID to find this network */
			wildcard = 1;
		} else if (!FUNC18(wpa_s, ssid) &&
			   ssid->ssid_len)
			need_ssids++;

#ifdef CONFIG_WPS
		if (!wpas_network_disabled(wpa_s, ssid) &&
		    ssid->key_mgmt == WPA_KEY_MGMT_WPS) {
			/*
			 * Normal scan is more reliable and faster for WPS
			 * operations and since these are for short periods of
			 * time, the benefit of trying to use sched_scan would
			 * be limited.
			 */
			wpa_dbg(wpa_s, MSG_DEBUG, "Use normal scan instead of "
				"sched_scan for WPS");
			return -1;
		}
#endif /* CONFIG_WPS */
	}
	if (wildcard)
		need_ssids++;

	if (wpa_s->normal_scans < 3 &&
	    (need_ssids <= wpa_s->max_scan_ssids ||
	     wpa_s->max_scan_ssids >= (int) max_sched_scan_ssids)) {
		/*
		 * When normal scan can speed up operations, use that for the
		 * first operations before starting the sched_scan to allow
		 * user space sleep more. We do this only if the normal scan
		 * has functionality that is suitable for this or if the
		 * sched_scan does not have better support for multiple SSIDs.
		 */
		FUNC6(wpa_s, MSG_DEBUG, "Use normal scan instead of "
			"sched_scan for initial scans (normal_scans=%d)",
			wpa_s->normal_scans);
		return -1;
	}

	FUNC5(&params, 0, sizeof(params));

	/* If we can't allocate space for the filters, we just don't filter */
	params.filter_ssids = FUNC2(wpa_s->max_match_sets,
					sizeof(struct wpa_driver_scan_filter));

	prev_state = wpa_s->wpa_state;
	if (wpa_s->wpa_state == WPA_DISCONNECTED ||
	    wpa_s->wpa_state == WPA_INACTIVE)
		FUNC13(wpa_s, WPA_SCANNING);

	if (wpa_s->autoscan_params != NULL) {
		scan_params = wpa_s->autoscan_params;
		goto scan;
	}

	/* Find the starting point from which to continue scanning */
	ssid = wpa_s->conf->ssid;
	if (wpa_s->prev_sched_ssid) {
		while (ssid) {
			if (ssid == wpa_s->prev_sched_ssid) {
				ssid = ssid->next;
				break;
			}
			ssid = ssid->next;
		}
	}

	if (!ssid || !wpa_s->prev_sched_ssid) {
		FUNC6(wpa_s, MSG_DEBUG, "Beginning of SSID list");
		wpa_s->sched_scan_timeout = max_sched_scan_ssids * 2;
		wpa_s->first_sched_scan = 1;
		ssid = wpa_s->conf->ssid;
		wpa_s->prev_sched_ssid = ssid;
	}

	if (wildcard) {
		FUNC6(wpa_s, MSG_DEBUG, "Add wildcard SSID to sched_scan");
		params.num_ssids++;
	}

	while (ssid) {
		if (FUNC18(wpa_s, ssid))
			goto next;

		if (params.num_filter_ssids < wpa_s->max_match_sets &&
		    params.filter_ssids && ssid->ssid && ssid->ssid_len) {
			FUNC6(wpa_s, MSG_DEBUG, "add to filter ssid: %s",
				FUNC11(ssid->ssid, ssid->ssid_len));
			FUNC4(params.filter_ssids[params.num_filter_ssids].ssid,
				  ssid->ssid, ssid->ssid_len);
			params.filter_ssids[params.num_filter_ssids].ssid_len =
				ssid->ssid_len;
			params.num_filter_ssids++;
		} else if (params.filter_ssids && ssid->ssid && ssid->ssid_len)
		{
			FUNC6(wpa_s, MSG_DEBUG, "Not enough room for SSID "
				"filter for sched_scan - drop filter");
			FUNC3(params.filter_ssids);
			params.filter_ssids = NULL;
			params.num_filter_ssids = 0;
		}

		if (ssid->scan_ssid && ssid->ssid && ssid->ssid_len) {
			if (params.num_ssids == max_sched_scan_ssids)
				break; /* only room for broadcast SSID */
			FUNC6(wpa_s, MSG_DEBUG,
				"add to active scan ssid: %s",
				FUNC11(ssid->ssid, ssid->ssid_len));
			params.ssids[params.num_ssids].ssid =
				ssid->ssid;
			params.ssids[params.num_ssids].ssid_len =
				ssid->ssid_len;
			params.num_ssids++;
			if (params.num_ssids >= max_sched_scan_ssids) {
				wpa_s->prev_sched_ssid = ssid;
				do {
					ssid = ssid->next;
				} while (ssid &&
					 (FUNC18(wpa_s, ssid) ||
					  !ssid->scan_ssid));
				break;
			}
		}

	next:
		wpa_s->prev_sched_ssid = ssid;
		ssid = ssid->next;
	}

	if (params.num_filter_ssids == 0) {
		FUNC3(params.filter_ssids);
		params.filter_ssids = NULL;
	}

	extra_ie = FUNC12(wpa_s);
	if (extra_ie) {
		params.extra_ies = FUNC16(extra_ie);
		params.extra_ies_len = FUNC17(extra_ie);
	}

	if (wpa_s->conf->filter_rssi)
		params.filter_rssi = wpa_s->conf->filter_rssi;

	/* See if user specified frequencies. If so, scan only those. */
	if (wpa_s->conf->freq_list && !params.freqs) {
		FUNC6(wpa_s, MSG_DEBUG,
			"Optimize scan based on conf->freq_list");
		FUNC1(&params.freqs, wpa_s->conf->freq_list);
	}

#ifdef CONFIG_MBO
	if (wpa_s->enable_oce & OCE_STA)
		params.oce_scan = 1;
#endif /* CONFIG_MBO */

	scan_params = &params;

scan:
	wpa_s->sched_scan_timed_out = 0;

	/*
	 * We cannot support multiple scan plans if the scan request includes
	 * too many SSID's, so in this case use only the last scan plan and make
	 * it run infinitely. It will be stopped by the timeout.
	 */
	if (wpa_s->sched_scan_plans_num == 1 ||
	    (wpa_s->sched_scan_plans_num && !ssid && wpa_s->first_sched_scan)) {
		params.sched_scan_plans = wpa_s->sched_scan_plans;
		params.sched_scan_plans_num = wpa_s->sched_scan_plans_num;
	} else if (wpa_s->sched_scan_plans_num > 1) {
		FUNC6(wpa_s, MSG_DEBUG,
			"Too many SSIDs. Default to using single scheduled_scan plan");
		params.sched_scan_plans =
			&wpa_s->sched_scan_plans[wpa_s->sched_scan_plans_num -
						 1];
		params.sched_scan_plans_num = 1;
	} else {
		if (wpa_s->conf->sched_scan_interval)
			scan_plan.interval = wpa_s->conf->sched_scan_interval;
		else
			scan_plan.interval = 10;

		if (scan_plan.interval > wpa_s->max_sched_scan_plan_interval) {
			FUNC8(MSG_WARNING,
				   "Scan interval too long(%u), use the maximum allowed(%u)",
				   scan_plan.interval,
				   wpa_s->max_sched_scan_plan_interval);
			scan_plan.interval =
				wpa_s->max_sched_scan_plan_interval;
		}

		scan_plan.iterations = 0;
		params.sched_scan_plans = &scan_plan;
		params.sched_scan_plans_num = 1;
	}

	params.sched_scan_start_delay = wpa_s->conf->sched_scan_start_delay;

	if (ssid || !wpa_s->first_sched_scan) {
		FUNC6(wpa_s, MSG_DEBUG,
			"Starting sched scan after %u seconds: interval %u timeout %d",
			params.sched_scan_start_delay,
			params.sched_scan_plans[0].interval,
			wpa_s->sched_scan_timeout);
	} else {
		FUNC6(wpa_s, MSG_DEBUG,
			"Starting sched scan after %u seconds (no timeout)",
			params.sched_scan_start_delay);
	}

	FUNC10(wpa_s, scan_params);

	if ((wpa_s->mac_addr_rand_enable & MAC_ADDR_RAND_SCHED_SCAN) &&
	    wpa_s->wpa_state <= WPA_SCANNING) {
		params.mac_addr_rand = 1;
		if (wpa_s->mac_addr_sched_scan) {
			params.mac_addr = wpa_s->mac_addr_sched_scan;
			params.mac_addr_mask = wpa_s->mac_addr_sched_scan +
				ETH_ALEN;
		}
	}

	FUNC9(wpa_s, scan_params);

	ret = FUNC14(wpa_s, scan_params);
	FUNC15(extra_ie);
	FUNC3(params.filter_ssids);
	if (ret) {
		FUNC7(wpa_s, MSG_WARNING, "Failed to initiate sched scan");
		if (prev_state != wpa_s->wpa_state)
			FUNC13(wpa_s, prev_state);
		return ret;
	}

	/* If we have more SSIDs to scan, add a timeout so we scan them too */
	if (ssid || !wpa_s->first_sched_scan) {
		wpa_s->sched_scan_timed_out = 0;
		FUNC0(wpa_s->sched_scan_timeout, 0,
				       wpa_supplicant_sched_scan_timeout,
				       wpa_s, NULL);
		wpa_s->first_sched_scan = 0;
		wpa_s->sched_scan_timeout /= 2;
		params.sched_scan_plans[0].interval *= 2;
		if ((unsigned int) wpa_s->sched_scan_timeout <
		    params.sched_scan_plans[0].interval ||
		    params.sched_scan_plans[0].interval >
		    wpa_s->max_sched_scan_plan_interval) {
			params.sched_scan_plans[0].interval = 10;
			wpa_s->sched_scan_timeout = max_sched_scan_ssids * 2;
		}
	}

	/* If there is no more ssids, start next time from the beginning */
	if (!ssid)
		wpa_s->prev_sched_ssid = NULL;

	return 0;
}