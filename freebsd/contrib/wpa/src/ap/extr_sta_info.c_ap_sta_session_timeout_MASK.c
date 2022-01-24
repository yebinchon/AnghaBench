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
struct sta_info {int /*<<< orphan*/  addr; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOSTAPD_LEVEL_DEBUG ; 
 int /*<<< orphan*/  HOSTAPD_MODULE_IEEE80211 ; 
 int /*<<< orphan*/  ap_handle_session_timer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct hostapd_data*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hostapd_data*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC3(struct hostapd_data *hapd, struct sta_info *sta,
			    u32 session_timeout)
{
	FUNC2(hapd, sta->addr, HOSTAPD_MODULE_IEEE80211,
		       HOSTAPD_LEVEL_DEBUG, "setting session timeout to %d "
		       "seconds", session_timeout);
	FUNC0(ap_handle_session_timer, hapd, sta);
	FUNC1(session_timeout, 0, ap_handle_session_timer,
			       hapd, sta);
}