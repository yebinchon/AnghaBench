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
struct hostapd_vlan {scalar_t__* bridge; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_4__ {char* vlan_tagged_interface; } ;
struct TYPE_3__ {scalar_t__* vlan_bridge; TYPE_2__ ssid; } ;

/* Variables and functions */
 int IFNAMSIZ ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int FUNC0 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void FUNC3(char *br_name, struct hostapd_data *hapd,
			     struct hostapd_vlan *vlan, int vid)
{
	char *tagged_interface = hapd->conf->ssid.vlan_tagged_interface;
	int ret;

	if (vlan->bridge[0]) {
		FUNC1(br_name, vlan->bridge, IFNAMSIZ);
		ret = 0;
	} else if (hapd->conf->vlan_bridge[0]) {
		ret = FUNC0(br_name, IFNAMSIZ, "%s%d",
				  hapd->conf->vlan_bridge, vid);
	} else if (tagged_interface) {
		ret = FUNC0(br_name, IFNAMSIZ, "br%s.%d",
				  tagged_interface, vid);
	} else {
		ret = FUNC0(br_name, IFNAMSIZ, "brvlan%d", vid);
	}
	if (ret >= IFNAMSIZ)
		FUNC2(MSG_WARNING,
			   "VLAN: Interface name was truncated to %s",
			   br_name);
}