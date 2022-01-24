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
struct TYPE_2__ {int flags; } ;
struct wpa_driver_nl80211_data {int /*<<< orphan*/  wiphy_idx; TYPE_1__ capa; } ;
struct phy_info_arg {int dummy; } ;
struct nl_msg {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_GET_REG ; 
 int WPA_DRIVER_FLAGS_SELF_MANAGED_REGULATORY ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_driver_nl80211_data*,struct nl_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl80211_get_reg ; 
 scalar_t__ FUNC1 (struct nl_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nl_msg* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct nl_msg*) ; 
 int FUNC4 (struct wpa_driver_nl80211_data*,struct nl_msg*,int /*<<< orphan*/ ,struct phy_info_arg*) ; 

__attribute__((used)) static int FUNC5(struct wpa_driver_nl80211_data *drv,
					struct phy_info_arg *results)
{
	struct nl_msg *msg;

	msg = FUNC2();
	if (!msg)
		return -ENOMEM;

	FUNC0(drv, msg, 0, NL80211_CMD_GET_REG);
	if (drv->capa.flags & WPA_DRIVER_FLAGS_SELF_MANAGED_REGULATORY) {
		if (FUNC1(msg, NL80211_ATTR_WIPHY, drv->wiphy_idx)) {
			FUNC3(msg);
			return -1;
		}
	}

	return FUNC4(drv, msg, nl80211_get_reg, results);
}