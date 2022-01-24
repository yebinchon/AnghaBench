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
struct wpa_group {void* reject_4way_hs_for_entropy; void* first_sta_seen; } ;
struct wpa_authenticator {int dummy; } ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 void* TRUE ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 (struct wpa_authenticator*,struct wpa_group*) ; 
 scalar_t__ FUNC2 (struct wpa_authenticator*,struct wpa_group*) ; 
 scalar_t__ FUNC3 (struct wpa_authenticator*,struct wpa_group*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct wpa_authenticator *wpa_auth,
				  struct wpa_group *group)
{
	if (group->first_sta_seen)
		return;
	/*
	 * System has run bit further than at the time hostapd was started
	 * potentially very early during boot up. This provides better chances
	 * of collecting more randomness on embedded systems. Re-initialize the
	 * GMK and Counter here to improve their strength if there was not
	 * enough entropy available immediately after system startup.
	 */
	FUNC4(MSG_DEBUG, "WPA: Re-initialize GMK/Counter on first "
		   "station");
	if (FUNC0() != 1) {
		FUNC4(MSG_INFO, "WPA: Not enough entropy in random pool "
			   "to proceed - reject first 4-way handshake");
		group->reject_4way_hs_for_entropy = TRUE;
	} else {
		group->first_sta_seen = TRUE;
		group->reject_4way_hs_for_entropy = FALSE;
	}

	if (FUNC2(wpa_auth, group) < 0 ||
	    FUNC3(wpa_auth, group) < 0 ||
	    FUNC1(wpa_auth, group) < 0) {
		FUNC4(MSG_INFO, "WPA: GMK/GTK setup failed");
		group->first_sta_seen = FALSE;
		group->reject_4way_hs_for_entropy = TRUE;
	}
}