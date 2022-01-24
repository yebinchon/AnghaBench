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
struct wpa_scan_results {size_t num; int /*<<< orphan*/ * res; } ;
struct wpa_driver_nl80211_data {int /*<<< orphan*/  first_bss; } ;
struct nl_msg {int dummy; } ;
struct nl80211_noise_info {int dummy; } ;
struct nl80211_bss_info_arg {struct wpa_scan_results* res; struct wpa_driver_nl80211_data* drv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  NL80211_CMD_GET_SCAN ; 
 int /*<<< orphan*/  NLM_F_DUMP ; 
 int /*<<< orphan*/  bss_info_handler ; 
 struct nl_msg* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct wpa_driver_nl80211_data*,struct nl80211_noise_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nl80211_noise_info*) ; 
 struct wpa_scan_results* FUNC3 (int) ; 
 int FUNC4 (struct wpa_driver_nl80211_data*,struct nl_msg*,int /*<<< orphan*/ ,struct nl80211_bss_info_arg*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_scan_results*) ; 

__attribute__((used)) static struct wpa_scan_results *
FUNC8(struct wpa_driver_nl80211_data *drv)
{
	struct nl_msg *msg;
	struct wpa_scan_results *res;
	int ret;
	struct nl80211_bss_info_arg arg;

	res = FUNC3(sizeof(*res));
	if (res == NULL)
		return NULL;
	if (!(msg = FUNC0(drv->first_bss, NLM_F_DUMP,
				    NL80211_CMD_GET_SCAN))) {
		FUNC7(res);
		return NULL;
	}

	arg.drv = drv;
	arg.res = res;
	ret = FUNC4(drv, msg, bss_info_handler, &arg);
	if (ret == 0) {
		struct nl80211_noise_info info;

		FUNC6(MSG_DEBUG, "nl80211: Received scan results (%lu "
			   "BSSes)", (unsigned long) res->num);
		if (FUNC1(drv, &info) == 0) {
			size_t i;

			for (i = 0; i < res->num; ++i)
				FUNC2(res->res[i],
							      &info);
		}
		return res;
	}
	FUNC6(MSG_DEBUG, "nl80211: Scan result fetch failed: ret=%d "
		   "(%s)", ret, FUNC5(-ret));
	FUNC7(res);
	return NULL;
}