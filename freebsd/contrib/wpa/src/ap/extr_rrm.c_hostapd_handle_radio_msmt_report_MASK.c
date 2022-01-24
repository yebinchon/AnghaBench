#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_5__ {int dialog_token; int* variable; } ;
struct TYPE_6__ {TYPE_1__ rrm; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ action; } ;
struct ieee80211_mgmt {int /*<<< orphan*/  sa; TYPE_4__ u; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
#define  MEASURE_TYPE_BEACON 130 
#define  MEASURE_TYPE_FTM_RANGE 129 
#define  MEASURE_TYPE_LCI 128 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WLAN_EID_MEASURE_REPORT ; 
 int* FUNC0 (int const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_data*,int /*<<< orphan*/ ,int,int,int const*,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_data*,int,int const*,int const) ; 
 int /*<<< orphan*/  FUNC3 (struct hostapd_data*,int,int const*,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC5(struct hostapd_data *hapd,
					     const u8 *buf, size_t len)
{
	const struct ieee80211_mgmt *mgmt = (const struct ieee80211_mgmt *) buf;
	const u8 *pos, *ie, *end;
	u8 token, rep_mode;

	end = buf + len;
	token = mgmt->u.action.u.rrm.dialog_token;
	pos = mgmt->u.action.u.rrm.variable;

	while ((ie = FUNC0(pos, end - pos, WLAN_EID_MEASURE_REPORT))) {
		if (ie[1] < 3) {
			FUNC4(MSG_DEBUG, "Bad Measurement Report element");
			break;
		}

		rep_mode = ie[3];
		FUNC4(MSG_DEBUG, "Measurement report mode 0x%x type %u",
			   rep_mode, ie[4]);

		switch (ie[4]) {
		case MEASURE_TYPE_LCI:
			FUNC2(hapd, token, ie + 2, ie[1]);
			break;
		case MEASURE_TYPE_FTM_RANGE:
			FUNC3(hapd, token, ie + 2, ie[1]);
			break;
		case MEASURE_TYPE_BEACON:
			FUNC1(hapd, mgmt->sa, token,
						     rep_mode, ie + 2, ie[1]);
			break;
		default:
			FUNC4(MSG_DEBUG,
				   "Measurement report type %u is not supported",
				   ie[4]);
			break;
		}

		pos = ie + ie[1] + 2;
	}
}