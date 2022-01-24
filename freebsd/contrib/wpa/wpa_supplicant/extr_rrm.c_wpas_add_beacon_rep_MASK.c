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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  duration; } ;
struct beacon_rep_data {scalar_t__ ssid_len; scalar_t__ report_detail; TYPE_1__ scan_params; int /*<<< orphan*/  ssid; int /*<<< orphan*/  bssid; } ;
struct wpa_supplicant {struct beacon_rep_data beacon_rep_data; } ;
struct wpa_bss {size_t ie_len; size_t beacon_ie_len; scalar_t__ ssid_len; int /*<<< orphan*/  bssid; int /*<<< orphan*/  level; int /*<<< orphan*/  freq; int /*<<< orphan*/  ssid; } ;
struct rrm_measurement_beacon_report {int rsni; int /*<<< orphan*/  parent_tsf; scalar_t__ antenna_id; int /*<<< orphan*/  bssid; int /*<<< orphan*/  rcpi; int /*<<< orphan*/  duration; int /*<<< orphan*/  start_time; int /*<<< orphan*/  report_info; int /*<<< orphan*/  channel; int /*<<< orphan*/  op_class; } ;

/* Variables and functions */
 scalar_t__ BEACON_REPORT_DETAIL_NONE ; 
 scalar_t__ ETH_ALEN ; 
 int /*<<< orphan*/  broadcast_ether_addr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct beacon_rep_data*,struct wpa_bss*,struct wpabuf**,struct rrm_measurement_beacon_report*,scalar_t__**,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct wpa_supplicant *wpa_s,
			       struct wpabuf **wpa_buf, struct wpa_bss *bss,
			       u64 start, u64 parent_tsf)
{
	struct beacon_rep_data *data = &wpa_s->beacon_rep_data;
	u8 *ies = (u8 *) (bss + 1);
	u8 *pos = ies;
	size_t ies_len = bss->ie_len ? bss->ie_len : bss->beacon_ie_len;
	struct rrm_measurement_beacon_report rep;
	u8 idx = 0;

	if (FUNC3(data->bssid, broadcast_ether_addr, ETH_ALEN) != 0 &&
	    FUNC3(data->bssid, bss->bssid, ETH_ALEN) != 0)
		return 0;

	if (data->ssid_len &&
	    (data->ssid_len != bss->ssid_len ||
	     FUNC3(data->ssid, bss->ssid, bss->ssid_len) != 0))
		return 0;

	if (FUNC7(bss->freq, ies, ies_len, &rep.op_class,
				 &rep.channel, &rep.report_info) < 0)
		return 0;

	rep.start_time = FUNC2(start);
	rep.duration = FUNC0(data->scan_params.duration);
	rep.rcpi = FUNC5(bss->level);
	rep.rsni = 255; /* 255 indicates that RSNI is not available */
	FUNC4(rep.bssid, bss->bssid, ETH_ALEN);
	rep.antenna_id = 0; /* unknown */
	rep.parent_tsf = FUNC1(parent_tsf);

	do {
		int ret;

		ret = FUNC6(data, bss, wpa_buf, &rep,
					       &pos, &ies_len, idx++);
		if (ret)
			return ret;
	} while (data->report_detail != BEACON_REPORT_DETAIL_NONE &&
		 ies_len >= 2);

	return 0;
}