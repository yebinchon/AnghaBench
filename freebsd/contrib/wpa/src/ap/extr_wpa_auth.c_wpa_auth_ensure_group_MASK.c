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
struct wpa_group {int vlan_id; scalar_t__ wpa_group_state; int /*<<< orphan*/  num_setup_iface; struct wpa_group* next; } ;
struct wpa_authenticator {struct wpa_group* group; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ WPA_GROUP_FATAL_FAILURE ; 
 struct wpa_group* FUNC0 (struct wpa_authenticator*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_authenticator*,struct wpa_group*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC3(struct wpa_authenticator *wpa_auth, int vlan_id)
{
	struct wpa_group *group;

	if (wpa_auth == NULL)
		return 0;

	group = wpa_auth->group;
	while (group) {
		if (group->vlan_id == vlan_id)
			break;
		group = group->next;
	}

	if (group == NULL) {
		group = FUNC0(wpa_auth, vlan_id);
		if (group == NULL)
			return -1;
	}

	FUNC2(MSG_DEBUG,
		   "WPA: Ensure group state machine running for VLAN ID %d",
		   vlan_id);

	FUNC1(wpa_auth, group);
	group->num_setup_iface++;

	if (group->wpa_group_state == WPA_GROUP_FATAL_FAILURE)
		return -1;

	return 0;
}