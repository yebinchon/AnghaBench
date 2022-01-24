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
struct hostapd_data {scalar_t__ drv_priv; int /*<<< orphan*/ * wps_probe_resp_ie; int /*<<< orphan*/ * wps_beacon_ie; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct hostapd_data *hapd, int deinit_only)
{
	FUNC2(hapd->wps_beacon_ie);
	hapd->wps_beacon_ie = NULL;

	FUNC2(hapd->wps_probe_resp_ie);
	hapd->wps_probe_resp_ie = NULL;

	if (deinit_only) {
		if (hapd->drv_priv)
			FUNC0(hapd);
		return;
	}

	FUNC1(hapd);
}