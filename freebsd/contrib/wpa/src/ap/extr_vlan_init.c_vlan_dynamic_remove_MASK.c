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
struct hostapd_vlan {scalar_t__ vlan_id; int /*<<< orphan*/  ifname; struct hostapd_vlan* next; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ VLAN_ID_WILDCARD ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct hostapd_data*) ; 
 scalar_t__ FUNC2 (struct hostapd_data*,struct hostapd_vlan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct hostapd_data *hapd,
				struct hostapd_vlan *vlan)
{
	struct hostapd_vlan *next;

	while (vlan) {
		next = vlan->next;

#ifdef CONFIG_FULL_DYNAMIC_VLAN
		/* vlan_dellink() takes care of cleanup and interface removal */
		if (vlan->vlan_id != VLAN_ID_WILDCARD)
			vlan_dellink(vlan->ifname, hapd);
#else /* CONFIG_FULL_DYNAMIC_VLAN */
		if (vlan->vlan_id != VLAN_ID_WILDCARD &&
		    FUNC2(hapd, vlan)) {
			FUNC3(MSG_ERROR, "VLAN: Could not remove VLAN "
				   "iface: %s: %s",
				   vlan->ifname, FUNC0(errno));
		}
#endif /* CONFIG_FULL_DYNAMIC_VLAN */

		vlan = next;
	}
}