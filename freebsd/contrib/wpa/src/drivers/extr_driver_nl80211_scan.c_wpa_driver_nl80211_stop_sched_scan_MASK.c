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
struct TYPE_2__ {int /*<<< orphan*/  sched_scan_supported; } ;
struct wpa_driver_nl80211_data {TYPE_1__ capa; } ;
struct nl_msg {int dummy; } ;
struct i802_bss {struct wpa_driver_nl80211_data* drv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  NL80211_CMD_STOP_SCHED_SCAN ; 
 int FUNC0 (struct i802_bss*) ; 
 struct nl_msg* FUNC1 (struct wpa_driver_nl80211_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wpa_driver_nl80211_data*,struct nl_msg*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC5(void *priv)
{
	struct i802_bss *bss = priv;
	struct wpa_driver_nl80211_data *drv = bss->drv;
	int ret;
	struct nl_msg *msg;

#ifdef ANDROID
	if (!drv->capa.sched_scan_supported)
		return android_pno_stop(bss);
#endif /* ANDROID */

	msg = FUNC1(drv, 0, NL80211_CMD_STOP_SCHED_SCAN);
	ret = FUNC2(drv, msg, NULL, NULL);
	if (ret) {
		FUNC4(MSG_DEBUG,
			   "nl80211: Sched scan stop failed: ret=%d (%s)",
			   ret, FUNC3(-ret));
	} else {
		FUNC4(MSG_DEBUG,
			   "nl80211: Sched scan stop sent");
	}

	return ret;
}