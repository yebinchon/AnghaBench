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
struct wpa_group {struct wpa_group* next; int /*<<< orphan*/  vlan_id; } ;
struct wpa_authenticator {struct wpa_group* group; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_group*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wpa_authenticator *wpa_auth,
			   struct wpa_group *group)
{
	struct wpa_group *prev = wpa_auth->group;

	FUNC1(MSG_DEBUG, "WPA: Remove group state machine for VLAN-ID %d",
		   group->vlan_id);

	while (prev) {
		if (prev->next == group) {
			/* This never frees the special first group as needed */
			prev->next = group->next;
			FUNC0(group);
			break;
		}
		prev = prev->next;
	}

}