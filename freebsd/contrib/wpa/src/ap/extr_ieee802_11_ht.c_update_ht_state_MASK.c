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
struct sta_info {int flags; scalar_t__ ht_capabilities; } ;
struct hostapd_data {int /*<<< orphan*/  iface; } ;

/* Variables and functions */
 int WLAN_STA_HT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_data*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct hostapd_data*,struct sta_info*) ; 

void FUNC4(struct hostapd_data *hapd, struct sta_info *sta)
{
	if ((sta->flags & WLAN_STA_HT) && sta->ht_capabilities)
		FUNC2(hapd, sta);
	else
		FUNC3(hapd, sta);

	if (FUNC0(hapd->iface) > 0)
		FUNC1(hapd->iface);
}