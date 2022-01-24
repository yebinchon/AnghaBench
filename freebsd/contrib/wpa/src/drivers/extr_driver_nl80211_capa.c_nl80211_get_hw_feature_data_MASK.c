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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct wpa_driver_nl80211_data {int dummy; } ;
struct phy_info_arg {int* num_modes; int last_mode; TYPE_1__* modes; int /*<<< orphan*/  dfs_domain; scalar_t__ failed; } ;
struct nl_msg {int dummy; } ;
struct i802_bss {struct wpa_driver_nl80211_data* drv; } ;
struct hostapd_hw_modes {int dummy; } ;
struct TYPE_3__ {struct TYPE_3__* rates; struct TYPE_3__* channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_ATTR_SPLIT_WIPHY_DUMP ; 
 int /*<<< orphan*/  NL80211_CMD_GET_WIPHY ; 
 int NL80211_PROTOCOL_FEATURE_SPLIT_WIPHY_DUMP ; 
 int NLM_F_DUMP ; 
 int FUNC0 (struct wpa_driver_nl80211_data*) ; 
 struct nl_msg* FUNC1 (struct i802_bss*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_hw_modes*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_driver_nl80211_data*,struct phy_info_arg*) ; 
 scalar_t__ FUNC4 (struct nl_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nl_msg*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  phy_info_handler ; 
 scalar_t__ FUNC7 (struct wpa_driver_nl80211_data*,struct nl_msg*,int /*<<< orphan*/ ,struct phy_info_arg*) ; 
 struct hostapd_hw_modes* FUNC8 (TYPE_1__*,int*) ; 

struct hostapd_hw_modes *
FUNC9(void *priv, u16 *num_modes, u16 *flags,
			    u8 *dfs_domain)
{
	u32 feat;
	struct i802_bss *bss = priv;
	struct wpa_driver_nl80211_data *drv = bss->drv;
	int nl_flags = 0;
	struct nl_msg *msg;
	struct phy_info_arg result = {
		.num_modes = num_modes,
		.modes = NULL,
		.last_mode = -1,
		.failed = 0,
		.dfs_domain = 0,
	};

	*num_modes = 0;
	*flags = 0;
	*dfs_domain = 0;

	feat = FUNC0(drv);
	if (feat & NL80211_PROTOCOL_FEATURE_SPLIT_WIPHY_DUMP)
		nl_flags = NLM_F_DUMP;
	if (!(msg = FUNC1(bss, nl_flags, NL80211_CMD_GET_WIPHY)) ||
	    FUNC4(msg, NL80211_ATTR_SPLIT_WIPHY_DUMP)) {
		FUNC5(msg);
		return NULL;
	}

	if (FUNC7(drv, msg, phy_info_handler, &result) == 0) {
		struct hostapd_hw_modes *modes;

		FUNC3(drv, &result);
		if (result.failed) {
			int i;

			for (i = 0; result.modes && i < *num_modes; i++) {
				FUNC6(result.modes[i].channels);
				FUNC6(result.modes[i].rates);
			}
			FUNC6(result.modes);
			*num_modes = 0;
			return NULL;
		}

		*dfs_domain = result.dfs_domain;

		modes = FUNC8(result.modes,
							     num_modes);
		FUNC2(modes, *num_modes);
		return modes;
	}

	return NULL;
}