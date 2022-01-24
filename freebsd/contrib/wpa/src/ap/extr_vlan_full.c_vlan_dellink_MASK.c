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
struct TYPE_3__ {int notempty; int untagged; int* tagged; } ;
struct hostapd_vlan {char const* ifname; int clean; struct hostapd_vlan* next; TYPE_1__ vlan_desc; scalar_t__ configured; } ;
struct hostapd_data {TYPE_2__* conf; } ;
struct TYPE_4__ {char* bridge; struct hostapd_vlan* vlan; } ;

/* Variables and functions */
 int DVLAN_CLEAN_WLAN_PORT ; 
 int /*<<< orphan*/  DYNAMIC_VLAN_NAMING_WITH_DEVICE ; 
 int IFNAMSIZ ; 
 int MAX_NUM_TAGGED_VLAN ; 
 int MAX_VLAN_ID ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_vlan*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct hostapd_data*,struct hostapd_vlan*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,char*,int,struct hostapd_data*) ; 
 scalar_t__ FUNC7 (struct hostapd_data*,struct hostapd_vlan*) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct hostapd_data*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char const*,...) ; 

void FUNC10(const char *ifname, struct hostapd_data *hapd)
{
	struct hostapd_vlan *first, *prev, *vlan = hapd->conf->vlan;

	FUNC9(MSG_DEBUG, "VLAN: vlan_dellink(%s)", ifname);

	first = prev = vlan;

	while (vlan) {
		if (FUNC3(ifname, vlan->ifname) != 0) {
			prev = vlan;
			vlan = vlan->next;
			continue;
		}
		break;
	}
	if (!vlan)
		return;

	if (vlan->configured) {
		int notempty = vlan->vlan_desc.notempty;
		int untagged = vlan->vlan_desc.untagged;
		int *tagged = vlan->vlan_desc.tagged;
		char br_name[IFNAMSIZ];
		int i;

		for (i = 0; i < MAX_NUM_TAGGED_VLAN && tagged[i]; i++) {
			if (tagged[i] == untagged ||
			    tagged[i] <= 0 || tagged[i] > MAX_VLAN_ID ||
			    (i > 0 && tagged[i] == tagged[i - 1]))
				continue;
			FUNC5(br_name, hapd, vlan, tagged[i]);
			FUNC6(DYNAMIC_VLAN_NAMING_WITH_DEVICE,
					    ifname, br_name, tagged[i], hapd);
			FUNC8(br_name, hapd, tagged[i]);
		}

		if (!notempty) {
			/* Non-VLAN STA */
			if (hapd->conf->bridge[0] &&
			    (vlan->clean & DVLAN_CLEAN_WLAN_PORT))
				FUNC0(hapd->conf->bridge, ifname);
		} else if (untagged > 0 && untagged <= MAX_VLAN_ID) {
			FUNC5(br_name, hapd, vlan, untagged);

			if (vlan->clean & DVLAN_CLEAN_WLAN_PORT)
				FUNC0(br_name, vlan->ifname);

			FUNC8(br_name, hapd, untagged);
		}
	}

	/*
	 * Ensure this VLAN interface is actually removed even if
	 * NEWLINK message is only received later.
	 */
	if (FUNC1(vlan->ifname) && FUNC7(hapd, vlan))
		FUNC9(MSG_ERROR,
			   "VLAN: Could not remove VLAN iface: %s: %s",
			   vlan->ifname, FUNC4(errno));

	if (vlan == first)
		hapd->conf->vlan = vlan->next;
	else
		prev->next = vlan->next;

	FUNC2(vlan);
}