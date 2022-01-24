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
struct wpa_supplicant {unsigned int max_sched_scan_ssids; int pno; int pno_sched_pending; scalar_t__ wpa_state; size_t max_match_sets; int sched_scan_plans_num; int mac_addr_rand_enable; scalar_t__ mac_addr_pno; int /*<<< orphan*/ * manual_sched_scan_freqs; TYPE_2__* conf; struct sched_scan_plan* sched_scan_plans; scalar_t__ sched_scan_stop_req; scalar_t__ sched_scanning; int /*<<< orphan*/  sched_scan_supported; } ;
struct wpa_ssid {struct wpa_ssid* pnext; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; scalar_t__ scan_ssid; struct wpa_ssid* next; } ;
struct wpa_driver_scan_params {size_t num_ssids; int sched_scan_plans_num; int mac_addr_rand; TYPE_3__* filter_ssids; scalar_t__ mac_addr_mask; scalar_t__ mac_addr; int /*<<< orphan*/ * freqs; int /*<<< orphan*/  sched_scan_start_delay; struct sched_scan_plan* sched_scan_plans; scalar_t__ filter_rssi; int /*<<< orphan*/  num_filter_ssids; TYPE_1__* ssids; } ;
struct wpa_driver_scan_filter {int dummy; } ;
struct sched_scan_plan {int interval; scalar_t__ iterations; } ;
typedef  int /*<<< orphan*/  params ;
struct TYPE_7__ {int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;
struct TYPE_6__ {int num_prio; int sched_scan_interval; int /*<<< orphan*/  sched_scan_start_delay; scalar_t__ filter_rssi; struct wpa_ssid** pssid; struct wpa_ssid* ssid; } ;
struct TYPE_5__ {int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ ETH_ALEN ; 
 int MAC_ADDR_RAND_PNO ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 unsigned int WPAS_MAX_SCAN_SSIDS ; 
 scalar_t__ WPA_COMPLETED ; 
 scalar_t__ WPA_SCANNING ; 
 TYPE_3__* FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_driver_scan_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*,struct wpa_driver_scan_params*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_supplicant*) ; 
 int FUNC10 (struct wpa_supplicant*,struct wpa_driver_scan_params*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpa_supplicant*,struct wpa_ssid*) ; 

int FUNC12(struct wpa_supplicant *wpa_s)
{
	int ret, prio;
	size_t i, num_ssid, num_match_ssid;
	struct wpa_ssid *ssid;
	struct wpa_driver_scan_params params;
	struct sched_scan_plan scan_plan;
	unsigned int max_sched_scan_ssids;

	if (!wpa_s->sched_scan_supported)
		return -1;

	if (wpa_s->max_sched_scan_ssids > WPAS_MAX_SCAN_SSIDS)
		max_sched_scan_ssids = WPAS_MAX_SCAN_SSIDS;
	else
		max_sched_scan_ssids = wpa_s->max_sched_scan_ssids;
	if (max_sched_scan_ssids < 1)
		return -1;

	if (wpa_s->pno || wpa_s->pno_sched_pending)
		return 0;

	if ((wpa_s->wpa_state > WPA_SCANNING) &&
	    (wpa_s->wpa_state < WPA_COMPLETED)) {
		FUNC6(MSG_ERROR, "PNO: In assoc process");
		return -EAGAIN;
	}

	if (wpa_s->wpa_state == WPA_SCANNING) {
		FUNC8(wpa_s);
		if (wpa_s->sched_scanning) {
			FUNC6(MSG_DEBUG, "Schedule PNO on completion of "
				   "ongoing sched scan");
			FUNC9(wpa_s);
			wpa_s->pno_sched_pending = 1;
			return 0;
		}
	}

	if (wpa_s->sched_scan_stop_req) {
		FUNC6(MSG_DEBUG,
			   "Schedule PNO after previous sched scan has stopped");
		wpa_s->pno_sched_pending = 1;
		return 0;
	}

	FUNC3(&params, 0, sizeof(params));

	num_ssid = num_match_ssid = 0;
	ssid = wpa_s->conf->ssid;
	while (ssid) {
		if (!FUNC11(wpa_s, ssid)) {
			num_match_ssid++;
			if (ssid->scan_ssid)
				num_ssid++;
		}
		ssid = ssid->next;
	}

	if (num_match_ssid == 0) {
		FUNC6(MSG_DEBUG, "PNO: No configured SSIDs");
		return -1;
	}

	if (num_match_ssid > num_ssid) {
		params.num_ssids++; /* wildcard */
		num_ssid++;
	}

	if (num_ssid > max_sched_scan_ssids) {
		FUNC6(MSG_DEBUG, "PNO: Use only the first %u SSIDs from "
			   "%u", max_sched_scan_ssids, (unsigned int) num_ssid);
		num_ssid = max_sched_scan_ssids;
	}

	if (num_match_ssid > wpa_s->max_match_sets) {
		num_match_ssid = wpa_s->max_match_sets;
		FUNC4(wpa_s, MSG_DEBUG, "PNO: Too many SSIDs to match");
	}
	params.filter_ssids = FUNC0(num_match_ssid,
					sizeof(struct wpa_driver_scan_filter));
	if (params.filter_ssids == NULL)
		return -1;

	i = 0;
	prio = 0;
	ssid = wpa_s->conf->pssid[prio];
	while (ssid) {
		if (!FUNC11(wpa_s, ssid)) {
			if (ssid->scan_ssid && params.num_ssids < num_ssid) {
				params.ssids[params.num_ssids].ssid =
					ssid->ssid;
				params.ssids[params.num_ssids].ssid_len =
					 ssid->ssid_len;
				params.num_ssids++;
			}
			FUNC2(params.filter_ssids[i].ssid, ssid->ssid,
				  ssid->ssid_len);
			params.filter_ssids[i].ssid_len = ssid->ssid_len;
			params.num_filter_ssids++;
			i++;
			if (i == num_match_ssid)
				break;
		}
		if (ssid->pnext)
			ssid = ssid->pnext;
		else if (prio + 1 == wpa_s->conf->num_prio)
			break;
		else
			ssid = wpa_s->conf->pssid[++prio];
	}

	if (wpa_s->conf->filter_rssi)
		params.filter_rssi = wpa_s->conf->filter_rssi;

	if (wpa_s->sched_scan_plans_num) {
		params.sched_scan_plans = wpa_s->sched_scan_plans;
		params.sched_scan_plans_num = wpa_s->sched_scan_plans_num;
	} else {
		/* Set one scan plan that will run infinitely */
		if (wpa_s->conf->sched_scan_interval)
			scan_plan.interval = wpa_s->conf->sched_scan_interval;
		else
			scan_plan.interval = 10;

		scan_plan.iterations = 0;
		params.sched_scan_plans = &scan_plan;
		params.sched_scan_plans_num = 1;
	}

	params.sched_scan_start_delay = wpa_s->conf->sched_scan_start_delay;

	if (params.freqs == NULL && wpa_s->manual_sched_scan_freqs) {
		FUNC4(wpa_s, MSG_DEBUG, "Limit sched scan to specified channels");
		params.freqs = wpa_s->manual_sched_scan_freqs;
	}

	if ((wpa_s->mac_addr_rand_enable & MAC_ADDR_RAND_PNO) &&
	    wpa_s->wpa_state <= WPA_SCANNING) {
		params.mac_addr_rand = 1;
		if (wpa_s->mac_addr_pno) {
			params.mac_addr = wpa_s->mac_addr_pno;
			params.mac_addr_mask = wpa_s->mac_addr_pno + ETH_ALEN;
		}
	}

	FUNC7(wpa_s, &params);

	ret = FUNC10(wpa_s, &params);
	FUNC1(params.filter_ssids);
	if (ret == 0)
		wpa_s->pno = 1;
	else
		FUNC5(wpa_s, MSG_ERROR, "Failed to schedule PNO");
	return ret;
}