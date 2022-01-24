#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vlan_description {int /*<<< orphan*/  notempty; } ;
struct sta_info {int /*<<< orphan*/  addr; int /*<<< orphan*/  vlan_desc; struct sta_info* next; } ;
struct hostapd_data {TYPE_1__* conf; struct sta_info* sta_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_deny_mac; int /*<<< orphan*/  deny_mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_REASON_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*,struct sta_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vlan_description*) ; 
 int /*<<< orphan*/  FUNC2 (struct vlan_description*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hostapd_data *hapd)
{
	struct sta_info *sta;
	struct vlan_description vlan_id;

	for (sta = hapd->sta_list; sta; sta = sta->next) {
		if (FUNC1(hapd->conf->deny_mac,
					  hapd->conf->num_deny_mac, sta->addr,
					  &vlan_id) &&
		    (!vlan_id.notempty ||
		     !FUNC2(&vlan_id, sta->vlan_desc)))
			FUNC0(hapd, sta, sta->addr,
					  WLAN_REASON_UNSPECIFIED);
	}
}