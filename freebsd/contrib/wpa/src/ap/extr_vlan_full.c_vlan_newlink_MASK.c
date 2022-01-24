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
struct hostapd_vlan {int configured; int /*<<< orphan*/  clean; TYPE_1__ vlan_desc; int /*<<< orphan*/  ifname; struct hostapd_vlan* next; } ;
struct hostapd_data {TYPE_2__* conf; } ;
struct TYPE_4__ {char* bridge; struct hostapd_vlan* vlan; } ;

/* Variables and functions */
 int /*<<< orphan*/  DVLAN_CLEAN_WLAN_PORT ; 
 int /*<<< orphan*/  DYNAMIC_VLAN_NAMING_WITH_DEVICE ; 
 int IFNAMSIZ ; 
 int MAX_NUM_TAGGED_VLAN ; 
 int MAX_VLAN_ID ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct hostapd_data*,struct hostapd_vlan*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct hostapd_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,char*,int,struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*) ; 

void FUNC7(const char *ifname, struct hostapd_data *hapd)
{
	char br_name[IFNAMSIZ];
	struct hostapd_vlan *vlan;
	int untagged, *tagged, i, notempty;

	FUNC6(MSG_DEBUG, "VLAN: vlan_newlink(%s)", ifname);

	for (vlan = hapd->conf->vlan; vlan; vlan = vlan->next) {
		if (vlan->configured ||
		    FUNC2(ifname, vlan->ifname) != 0)
			continue;
		break;
	}
	if (!vlan)
		return;

	vlan->configured = 1;

	notempty = vlan->vlan_desc.notempty;
	untagged = vlan->vlan_desc.untagged;
	tagged = vlan->vlan_desc.tagged;

	if (!notempty) {
		/* Non-VLAN STA */
		if (hapd->conf->bridge[0] &&
		    !FUNC0(hapd->conf->bridge, ifname))
			vlan->clean |= DVLAN_CLEAN_WLAN_PORT;
	} else if (untagged > 0 && untagged <= MAX_VLAN_ID) {
		FUNC3(br_name, hapd, vlan, untagged);

		FUNC4(br_name, hapd, untagged);

		if (!FUNC0(br_name, ifname))
			vlan->clean |= DVLAN_CLEAN_WLAN_PORT;
	}

	for (i = 0; i < MAX_NUM_TAGGED_VLAN && tagged[i]; i++) {
		if (tagged[i] == untagged ||
		    tagged[i] <= 0 || tagged[i] > MAX_VLAN_ID ||
		    (i > 0 && tagged[i] == tagged[i - 1]))
			continue;
		FUNC3(br_name, hapd, vlan, tagged[i]);
		FUNC4(br_name, hapd, tagged[i]);
		FUNC5(DYNAMIC_VLAN_NAMING_WITH_DEVICE,
				    ifname, br_name, tagged[i], hapd);
	}

	FUNC1(ifname);
}