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
typedef  int /*<<< orphan*/  u32 ;
struct wpa_driver_nl80211_data {int dummy; } ;
struct nl_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_CMD_GET_PROTOCOL_FEATURES ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_driver_nl80211_data*,struct nl_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nl_msg* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct nl_msg*) ; 
 int /*<<< orphan*/  protocol_feature_handler ; 
 scalar_t__ FUNC3 (struct wpa_driver_nl80211_data*,struct nl_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC4(struct wpa_driver_nl80211_data *drv)
{
	u32 feat = 0;
	struct nl_msg *msg;

	msg = FUNC1();
	if (!msg)
		return 0;

	if (!FUNC0(drv, msg, 0, NL80211_CMD_GET_PROTOCOL_FEATURES)) {
		FUNC2(msg);
		return 0;
	}

	if (FUNC3(drv, msg, protocol_feature_handler, &feat) == 0)
		return feat;

	return 0;
}