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
struct vlan_description {scalar_t__ notempty; } ;
struct sta_info {int /*<<< orphan*/  addr; int /*<<< orphan*/  vlan_desc; struct sta_info* next; } ;
struct hostapd_data {TYPE_1__* conf; struct sta_info* sta_list; } ;
struct TYPE_2__ {scalar_t__ macaddr_acl; int /*<<< orphan*/  num_accept_mac; int /*<<< orphan*/  accept_mac; } ;

/* Variables and functions */
 scalar_t__ DENY_UNLESS_ACCEPTED ; 
 int /*<<< orphan*/  WLAN_REASON_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*,struct sta_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vlan_description*) ; 
 scalar_t__ FUNC2 (struct vlan_description*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hostapd_data *hapd)
{
	struct sta_info *sta;
	struct vlan_description vlan_id;

	if (hapd->conf->macaddr_acl != DENY_UNLESS_ACCEPTED)
		return;

	for (sta = hapd->sta_list; sta; sta = sta->next) {
		if (!FUNC1(hapd->conf->accept_mac,
					   hapd->conf->num_accept_mac,
					   sta->addr, &vlan_id) ||
		    (vlan_id.notempty &&
		     FUNC2(&vlan_id, sta->vlan_desc)))
			FUNC0(hapd, sta, sta->addr,
					  WLAN_REASON_UNSPECIFIED);
	}
}