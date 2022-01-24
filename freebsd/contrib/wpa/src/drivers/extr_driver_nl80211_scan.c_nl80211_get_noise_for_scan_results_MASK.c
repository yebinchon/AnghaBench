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
struct nl80211_noise_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_CMD_GET_SURVEY ; 
 int /*<<< orphan*/  NLM_F_DUMP ; 
 int /*<<< orphan*/  get_noise_for_scan_results ; 
 struct nl_msg* FUNC0 (struct wpa_driver_nl80211_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nl80211_noise_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct wpa_driver_nl80211_data*,struct nl_msg*,int /*<<< orphan*/ ,struct nl80211_noise_info*) ; 

__attribute__((used)) static int FUNC3(
	struct wpa_driver_nl80211_data *drv, struct nl80211_noise_info *info)
{
	struct nl_msg *msg;

	FUNC1(info, 0, sizeof(*info));
	msg = FUNC0(drv, NLM_F_DUMP, NL80211_CMD_GET_SURVEY);
	return FUNC2(drv, msg, get_noise_for_scan_results, info);
}