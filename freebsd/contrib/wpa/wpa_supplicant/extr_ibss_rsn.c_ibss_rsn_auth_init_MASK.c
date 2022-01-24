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
typedef  int /*<<< orphan*/  u8 ;
struct ibss_rsn_peer {int /*<<< orphan*/ * auth; int /*<<< orphan*/  addr; } ;
struct ibss_rsn {int /*<<< orphan*/  auth_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WPA_ASSOC ; 
 scalar_t__ WPA_IE_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ibss_rsn *ibss_rsn,
			      struct ibss_rsn_peer *peer)
{
	peer->auth = FUNC2(ibss_rsn->auth_group, peer->addr, NULL);
	if (peer->auth == NULL) {
		FUNC3(MSG_DEBUG, "AUTH: wpa_auth_sta_init() failed");
		return -1;
	}

	/* TODO: get peer RSN IE with Probe Request */
	if (FUNC4(ibss_rsn->auth_group, peer->auth, 0,
				(u8 *) "\x30\x14\x01\x00"
				"\x00\x0f\xac\x04"
				"\x01\x00\x00\x0f\xac\x04"
				"\x01\x00\x00\x0f\xac\x02"
				"\x00\x00", 22, NULL, 0, NULL, 0) !=
	    WPA_IE_OK) {
		FUNC3(MSG_DEBUG, "AUTH: wpa_validate_wpa_ie() failed");
		return -1;
	}

	if (FUNC0(peer->auth, WPA_ASSOC))
		return -1;

	if (FUNC1(ibss_rsn->auth_group, peer->auth))
		return -1;

	return 0;
}