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
struct hostapd_data {scalar_t__ tkip_countermeasures; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOSTAPD_LEVEL_INFO ; 
 int /*<<< orphan*/  HOSTAPD_MODULE_IEEE80211 ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(void *eloop_ctx,
						void *timeout_ctx)
{
	struct hostapd_data *hapd = eloop_ctx;
	hapd->tkip_countermeasures = 0;
	FUNC0(hapd, 0);
	FUNC1(hapd, NULL, HOSTAPD_MODULE_IEEE80211,
		       HOSTAPD_LEVEL_INFO, "TKIP countermeasures ended");
}