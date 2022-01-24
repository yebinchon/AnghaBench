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
struct TYPE_2__ {int unicast; int /*<<< orphan*/ * src; } ;
union wpa_event_data {TYPE_1__ michael_mic_failure; } ;
typedef  int /*<<< orphan*/  u8 ;
struct hostap_driver_data {int /*<<< orphan*/  hapd; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  EVENT_MICHAEL_MIC_FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (union wpa_event_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 char* FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union wpa_event_data*) ; 

__attribute__((used)) static void
FUNC6(struct hostap_driver_data *drv,
				       char *custom)
{
	FUNC4(MSG_DEBUG, "Custom wireless event: '%s'", custom);

	if (FUNC2(custom, "MLME-MICHAELMICFAILURE.indication", 33) == 0) {
		char *pos;
		u8 addr[ETH_ALEN];
		pos = FUNC3(custom, "addr=");
		if (pos == NULL) {
			FUNC4(MSG_DEBUG,
				   "MLME-MICHAELMICFAILURE.indication "
				   "without sender address ignored");
			return;
		}
		pos += 5;
		if (FUNC0(pos, addr) == 0) {
			union wpa_event_data data;
			FUNC1(&data, 0, sizeof(data));
			data.michael_mic_failure.unicast = 1;
			data.michael_mic_failure.src = addr;
			FUNC5(drv->hapd,
					     EVENT_MICHAEL_MIC_FAILURE, &data);
		} else {
			FUNC4(MSG_DEBUG,
				   "MLME-MICHAELMICFAILURE.indication "
				   "with invalid MAC address");
		}
	}
}