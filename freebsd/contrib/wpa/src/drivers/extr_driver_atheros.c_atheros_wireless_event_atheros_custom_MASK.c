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
struct atheros_driver_data {int dummy; } ;

/* Variables and functions */
#define  IEEE80211_EV_P2P_SEND_ACTION_CB 129 
#define  IEEE80211_EV_RX_MGMT 128 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct atheros_driver_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC2(struct atheros_driver_data *drv,
				      int opcode, char *buf, int len)
{
	switch (opcode) {
	case IEEE80211_EV_P2P_SEND_ACTION_CB:
		FUNC1(MSG_DEBUG, "WEXT: EV_P2P_SEND_ACTION_CB");
		FUNC0(drv);
		break;
	case IEEE80211_EV_RX_MGMT:
		FUNC1(MSG_DEBUG, "WEXT: EV_RX_MGMT");
		FUNC0(drv);
		break;
	default:
		break;
	}
}