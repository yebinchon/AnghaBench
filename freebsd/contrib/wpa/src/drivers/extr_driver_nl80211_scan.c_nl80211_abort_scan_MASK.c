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
struct wpa_driver_nl80211_data {int dummy; } ;
struct nl_msg {int dummy; } ;
struct i802_bss {struct wpa_driver_nl80211_data* drv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  NL80211_CMD_ABORT_SCAN ; 
 struct nl_msg* FUNC0 (struct i802_bss*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct wpa_driver_nl80211_data*,struct nl_msg*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC4(struct i802_bss *bss)
{
	int ret;
	struct nl_msg *msg;
	struct wpa_driver_nl80211_data *drv = bss->drv;

	FUNC3(MSG_DEBUG, "nl80211: Abort scan");
	msg = FUNC0(bss, 0, NL80211_CMD_ABORT_SCAN);
	ret = FUNC1(drv, msg, NULL, NULL);
	if (ret) {
		FUNC3(MSG_DEBUG, "nl80211: Abort scan failed: ret=%d (%s)",
			   ret, FUNC2(-ret));
	}
	return ret;
}