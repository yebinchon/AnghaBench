#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hostapd_vlan {struct hostapd_vlan* next; int /*<<< orphan*/  ifname; int /*<<< orphan*/  vlan_id; } ;
struct hostapd_data {TYPE_2__* conf; int /*<<< orphan*/  full_dynamic_vlan; } ;
struct TYPE_3__ {scalar_t__ dynamic_vlan; scalar_t__ per_sta_vif; } ;
struct TYPE_4__ {struct hostapd_vlan* vlan; int /*<<< orphan*/  iface; TYPE_1__ ssid; } ;

/* Variables and functions */
 scalar_t__ DYNAMIC_VLAN_DISABLED ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  VLAN_ID_WILDCARD ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_vlan*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 struct hostapd_vlan* FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct hostapd_data*,struct hostapd_vlan*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC6(struct hostapd_data *hapd)
{
#ifdef CONFIG_FULL_DYNAMIC_VLAN
	hapd->full_dynamic_vlan = full_dynamic_vlan_init(hapd);
#endif /* CONFIG_FULL_DYNAMIC_VLAN */

	if ((hapd->conf->ssid.dynamic_vlan != DYNAMIC_VLAN_DISABLED ||
	     hapd->conf->ssid.per_sta_vif) &&
	    !hapd->conf->vlan) {
		/* dynamic vlans enabled but no (or empty) vlan_file given */
		struct hostapd_vlan *vlan;
		int ret;

		vlan = FUNC3(sizeof(*vlan));
		if (vlan == NULL) {
			FUNC5(MSG_ERROR, "Out of memory while assigning "
				   "VLAN interfaces");
			return -1;
		}

		vlan->vlan_id = VLAN_ID_WILDCARD;
		ret = FUNC2(vlan->ifname, sizeof(vlan->ifname), "%s.#",
				  hapd->conf->iface);
		if (ret >= (int) sizeof(vlan->ifname)) {
			FUNC5(MSG_WARNING,
				   "VLAN: Interface name was truncated to %s",
				   vlan->ifname);
		} else if (ret < 0) {
			FUNC1(vlan);
			return ret;
		}
		vlan->next = hapd->conf->vlan;
		hapd->conf->vlan = vlan;
	}

	if (FUNC4(hapd, hapd->conf->vlan))
		return -1;

        return 0;
}