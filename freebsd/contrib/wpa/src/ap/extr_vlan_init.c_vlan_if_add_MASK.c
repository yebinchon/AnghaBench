#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hostapd_vlan {int /*<<< orphan*/  ifname; int /*<<< orphan*/  vlan_id; } ;
struct hostapd_data {scalar_t__ wpa_auth; TYPE_3__* conf; } ;
struct TYPE_4__ {int /*<<< orphan*/ * key; } ;
struct TYPE_5__ {TYPE_1__ wep; } ;
struct TYPE_6__ {TYPE_2__ ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int NUM_WEP_KEYS ; 
 int FUNC0 (struct hostapd_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hostapd_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC7(struct hostapd_data *hapd, struct hostapd_vlan *vlan,
		       int existsok)
{
	int ret, i;

	for (i = 0; i < NUM_WEP_KEYS; i++) {
		if (!hapd->conf->ssid.wep.key[i])
			continue;
		FUNC6(MSG_ERROR,
			   "VLAN: Refusing to set up VLAN iface %s with WEP",
			   vlan->ifname);
		return -1;
	}

	if (!FUNC2(vlan->ifname))
		ret = FUNC0(hapd, vlan->ifname);
	else if (!existsok)
		return -1;
	else
		ret = 0;

	if (ret)
		return ret;

	FUNC3(vlan->ifname); /* else wpa group will fail fatal */

	if (hapd->wpa_auth)
		ret = FUNC4(hapd->wpa_auth, vlan->vlan_id);

	if (ret == 0)
		return ret;

	FUNC6(MSG_ERROR, "WPA initialization for VLAN %d failed (%d)",
		   vlan->vlan_id, ret);
	if (FUNC5(hapd->wpa_auth, vlan->vlan_id))
		FUNC6(MSG_ERROR, "WPA deinit of %s failed", vlan->ifname);

	/* group state machine setup failed */
	if (FUNC1(hapd, vlan->ifname))
		FUNC6(MSG_ERROR, "Removal of %s failed", vlan->ifname);

	return ret;
}