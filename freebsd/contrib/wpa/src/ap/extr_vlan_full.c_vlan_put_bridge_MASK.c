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
struct hostapd_data {TYPE_2__* conf; } ;
struct TYPE_3__ {char* vlan_tagged_interface; int vlan_naming; } ;
struct TYPE_4__ {TYPE_1__ ssid; } ;

/* Variables and functions */
 int DVLAN_CLEAN_BR ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int FUNC2 (struct hostapd_data*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char const*,int,struct hostapd_data*) ; 

__attribute__((used)) static void FUNC5(const char *br_name, struct hostapd_data *hapd,
			    int vid)
{
	int clean;
	char *tagged_interface = hapd->conf->ssid.vlan_tagged_interface;
	int vlan_naming = hapd->conf->ssid.vlan_naming;

	if (tagged_interface)
		FUNC4(vlan_naming, tagged_interface, br_name,
				    vid, hapd);

	clean = FUNC2(hapd, br_name);
	if ((clean & DVLAN_CLEAN_BR) && FUNC1(br_name) == 0) {
		FUNC3(br_name);
		FUNC0(br_name);
	}
}