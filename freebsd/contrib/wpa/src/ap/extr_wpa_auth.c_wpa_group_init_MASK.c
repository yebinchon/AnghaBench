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
struct wpa_group {int vlan_id; void* GInit; int /*<<< orphan*/  GTK_len; void* GTKAuthenticator; } ;
struct TYPE_2__ {int /*<<< orphan*/  wpa_group; } ;
struct wpa_authenticator {TYPE_1__ conf; } ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_group*) ; 
 struct wpa_group* FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct wpa_authenticator*,struct wpa_group*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_authenticator*,struct wpa_group*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct wpa_group * FUNC7(struct wpa_authenticator *wpa_auth,
					 int vlan_id, int delay_init)
{
	struct wpa_group *group;

	group = FUNC1(sizeof(struct wpa_group));
	if (group == NULL)
		return NULL;

	group->GTKAuthenticator = TRUE;
	group->vlan_id = vlan_id;
	group->GTK_len = FUNC3(wpa_auth->conf.wpa_group);

	if (FUNC2() != 1) {
		FUNC6(MSG_INFO, "WPA: Not enough entropy in random pool "
			   "for secure operations - update keys later when "
			   "the first station connects");
	}

	/*
	 * Set initial GMK/Counter value here. The actual values that will be
	 * used in negotiations will be set once the first station tries to
	 * connect. This allows more time for collecting additional randomness
	 * on embedded devices.
	 */
	if (FUNC4(wpa_auth, group) < 0) {
		FUNC6(MSG_ERROR, "Failed to get random data for WPA "
			   "initialization.");
		FUNC0(group);
		return NULL;
	}

	group->GInit = TRUE;
	if (delay_init) {
		FUNC6(MSG_DEBUG, "WPA: Delay group state machine start "
			   "until Beacon frames have been configured");
		/* Initialization is completed in wpa_init_keys(). */
	} else {
		FUNC5(wpa_auth, group);
		group->GInit = FALSE;
		FUNC5(wpa_auth, group);
	}

	return group;
}