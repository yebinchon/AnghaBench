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
struct wpa_driver_nl80211_data {scalar_t__ monitor_refcount; int monitor_ifidx; int monitor_sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_driver_nl80211_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

void FUNC4(struct wpa_driver_nl80211_data *drv)
{
	if (drv->monitor_refcount > 0)
		drv->monitor_refcount--;
	FUNC3(MSG_DEBUG, "nl80211: Remove monitor interface: refcount=%d",
		   drv->monitor_refcount);
	if (drv->monitor_refcount > 0)
		return;

	if (drv->monitor_ifidx >= 0) {
		FUNC2(drv, drv->monitor_ifidx);
		drv->monitor_ifidx = -1;
	}
	if (drv->monitor_sock >= 0) {
		FUNC1(drv->monitor_sock);
		FUNC0(drv->monitor_sock);
		drv->monitor_sock = -1;
	}
}