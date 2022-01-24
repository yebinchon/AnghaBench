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
struct hostapd_vlan {int /*<<< orphan*/  ifname; int /*<<< orphan*/  vlan_id; } ;
struct hostapd_data {int /*<<< orphan*/  wpa_auth; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int FUNC0 (struct hostapd_data*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct hostapd_data *hapd, struct hostapd_vlan *vlan)
{
	int ret;

	ret = FUNC1(hapd->wpa_auth, vlan->vlan_id);
	if (ret)
		FUNC2(MSG_ERROR,
			   "WPA deinitialization for VLAN %d failed (%d)",
			   vlan->vlan_id, ret);

	return FUNC0(hapd, vlan->ifname);
}