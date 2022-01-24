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
struct wpa_supplicant {int /*<<< orphan*/  mesh_rsn; } ;
struct sta_info {int /*<<< orphan*/  peer_nonce; int /*<<< orphan*/  my_nonce; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  WPA_NONCE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void FUNC4(struct wpa_supplicant *wpa_s, struct sta_info *sta)
{
	if (FUNC2(sta->my_nonce, WPA_NONCE_LEN) < 0) {
		FUNC3(MSG_INFO, "mesh: Failed to derive random nonce");
		/* TODO: How to handle this more cleanly? */
	}
	FUNC1(sta->peer_nonce, 0, WPA_NONCE_LEN);
	FUNC0(wpa_s->mesh_rsn, sta);
}