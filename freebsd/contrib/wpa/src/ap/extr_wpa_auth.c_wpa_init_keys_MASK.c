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
struct wpa_group {scalar_t__ wpa_group_state; int /*<<< orphan*/  GInit; } ;
struct wpa_authenticator {struct wpa_group* group; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ WPA_GROUP_FATAL_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_authenticator*,struct wpa_group*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

int FUNC2(struct wpa_authenticator *wpa_auth)
{
	struct wpa_group *group = wpa_auth->group;

	FUNC1(MSG_DEBUG, "WPA: Start group state machine to set initial "
		   "keys");
	FUNC0(wpa_auth, group);
	group->GInit = FALSE;
	FUNC0(wpa_auth, group);
	if (group->wpa_group_state == WPA_GROUP_FATAL_FAILURE)
		return -1;
	return 0;
}