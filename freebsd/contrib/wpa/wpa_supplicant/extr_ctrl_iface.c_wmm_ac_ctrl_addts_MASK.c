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
struct wpa_supplicant {int dummy; } ;
struct wmm_ac_ts_setup_params {int tsid; int direction; int user_priority; int nominal_msdu_size; int mean_data_rate; int minimum_phy_rate; int surplus_bandwidth_allowance; int fixed_nominal_msdu; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WMM_TSPEC_DIRECTION_BI_DIRECTIONAL ; 
 int WMM_TSPEC_DIRECTION_DOWNLINK ; 
 int WMM_TSPEC_DIRECTION_UPLINK ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int FUNC1 (char*,char*,int*) ; 
 char* FUNC2 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 (struct wpa_supplicant*,struct wmm_ac_ts_setup_params*) ; 

__attribute__((used)) static int FUNC5(struct wpa_supplicant *wpa_s, char *cmd)
{
	char *token, *context = NULL;
	struct wmm_ac_ts_setup_params params = {
		.tsid = 0xff,
		.direction = 0xff,
	};

	while ((token = FUNC2(cmd, " ", &context))) {
		if (FUNC1(token, "tsid=%i", &params.tsid) == 1 ||
		    FUNC1(token, "up=%i", &params.user_priority) == 1 ||
		    FUNC1(token, "nominal_msdu_size=%i",
			   &params.nominal_msdu_size) == 1 ||
		    FUNC1(token, "mean_data_rate=%i",
			   &params.mean_data_rate) == 1 ||
		    FUNC1(token, "min_phy_rate=%i",
			   &params.minimum_phy_rate) == 1 ||
		    FUNC1(token, "sba=%i",
			   &params.surplus_bandwidth_allowance) == 1)
			continue;

		if (FUNC0(token, "downlink") == 0) {
			params.direction = WMM_TSPEC_DIRECTION_DOWNLINK;
		} else if (FUNC0(token, "uplink") == 0) {
			params.direction = WMM_TSPEC_DIRECTION_UPLINK;
		} else if (FUNC0(token, "bidi") == 0) {
			params.direction = WMM_TSPEC_DIRECTION_BI_DIRECTIONAL;
		} else if (FUNC0(token, "fixed_nominal_msdu") == 0) {
			params.fixed_nominal_msdu = 1;
		} else {
			FUNC3(MSG_DEBUG,
				   "CTRL: Invalid WMM_AC_ADDTS parameter: '%s'",
				   token);
			return -1;
		}

	}

	return FUNC4(wpa_s, &params);
}