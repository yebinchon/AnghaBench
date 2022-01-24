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
struct sta_info {int flags; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WLAN_STA_PENDING_DISASSOC_CB ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (struct hostapd_data*,struct sta_info*),struct hostapd_data*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3(struct hostapd_data *hapd, struct sta_info *sta)
{
	if (!(sta->flags & WLAN_STA_PENDING_DISASSOC_CB)) {
		FUNC2(MSG_DEBUG, "Ignore disassoc cb for test frame");
		return;
	}
	sta->flags &= ~WLAN_STA_PENDING_DISASSOC_CB;
	FUNC1(ap_sta_disassoc_cb_timeout, hapd, sta);
	FUNC0(hapd, sta);
}