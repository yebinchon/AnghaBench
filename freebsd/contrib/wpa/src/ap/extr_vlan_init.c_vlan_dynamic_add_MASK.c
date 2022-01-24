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
struct hostapd_vlan {scalar_t__ vlan_id; struct hostapd_vlan* next; int /*<<< orphan*/  ifname; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ VLAN_ID_WILDCARD ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hostapd_data*,struct hostapd_vlan*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hostapd_data *hapd,
			    struct hostapd_vlan *vlan)
{
	while (vlan) {
		if (vlan->vlan_id != VLAN_ID_WILDCARD) {
			if (FUNC1(hapd, vlan, 1)) {
				FUNC3(MSG_ERROR,
					   "VLAN: Could not add VLAN %s: %s",
					   vlan->ifname, FUNC0(errno));
				return -1;
			}
#ifdef CONFIG_FULL_DYNAMIC_VLAN
			vlan_newlink(vlan->ifname, hapd);
#endif /* CONFIG_FULL_DYNAMIC_VLAN */
		}

		vlan = vlan->next;
	}

	return 0;
}